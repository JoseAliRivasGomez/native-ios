
import SwiftUI

enum SwipeDirection {
    case left, right
}

struct AnimalView3: View {
    @StateObject var animalViewModel: AnimalViewModel = AnimalViewModel()
    
    @StateObject var languageViewModel: LanguageViewModel = LanguageViewModel()
    
    @State private var currentLanguage: Language = .english
    
    @State private var currentImageIndex = 0
    @State private var offset: CGFloat = 0
    @State private var tempOffset: CGFloat = 0

    let screenWidth = UIScreen.screenWidth
    
    func shiftImage(swipeDirection: SwipeDirection) {
        if currentImageIndex == animalViewModel.animalModels.count - 1 && swipeDirection == .left {
            return
        }
        
        if currentImageIndex == 0 && swipeDirection == .right {
            return
        }

        
        if (swipeDirection == .left) {
            currentImageIndex = (currentImageIndex - 1 + animalViewModel.animalModels.count) % animalViewModel.animalModels.count
        }
        else {
            currentImageIndex = (currentImageIndex + 1) % animalViewModel.animalModels.count
        }
        offset = -screenWidth * CGFloat(currentImageIndex)
        
    }
    
    
    func dragImage(amount: CGFloat) {

        offset = -screenWidth * CGFloat(currentImageIndex) - amount
        
    }

    var body: some View {
        ZStack {
            backgroundView()
            
            VStack {
                
                HStack {
                    ForEach(languageViewModel.languageModels) { languageModel in
                        
                        let selected = currentLanguage == languageModel.language
                        
                        VStack(spacing: 0) {
                            Text( languageModel.language.rawValue)
                                .font(.body)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                
                            if let flag = languageModel.flag {
                                Image(flag.rawValue)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                    .shadow(radius: 5)
                            }
                        }.padding()
                            .opacity(selected ? 1 : 0.7)
                            .scaleEffect(selected ? 1.2 : 1)
                        .onTapGesture {
                            withAnimation{
                                currentLanguage = languageModel.language
                            }
                        }
                    }
                }
                
                // Animal in circle
                LazyHStack(spacing: 0) {
                    ForEach( animalViewModel.animalModels) { animalModel in
                        AnimalImageView(animalModel: animalModel)
                            .onTapGesture {
                                let animalName = animalModel.getAnimalName( lang: currentLanguage)
                                
                                utter(
                                    text: animalName,
                                    language: currentLanguage)
                        }
                            .offset(x: offset)
                            .offset(x: tempOffset)
                            .animation(.spring(), value: offset)
                            .animation(.spring(), value: tempOffset)
                            .gesture(
                                DragGesture()
                                .onChanged { value in
                                tempOffset = value.translation.width
                                
                            }
                                .onEnded { value in
                                    
                                    if tempOffset > 0 {
                                        shiftImage(swipeDirection: .right)
                                    } else {
                                        shiftImage(swipeDirection: .left)
                                    }
                                tempOffset = 0
                            }
                            )

                        
                    }
                }
                .frame( width: screenWidth, height: screenWidth, alignment: .leading)
                    
                // Arrow buttons
                HStack {
                    Image(systemName: "arrow.left.square")
                        .font(.largeTitle.bold())
                        .foregroundColor(.white)
                        .onTapGesture {
                            shiftImage(swipeDirection: .left)
                        }

                    Spacer()
                    
                    Image(systemName: "arrow.right.square")
                        .font(.largeTitle.bold())
                        .foregroundColor(.white)
                        .onTapGesture {
                            shiftImage(swipeDirection: .right)
                        }

                    
                }
                .padding()

                                     
            }
        }
    }
}

struct AnimalView3_Previews: PreviewProvider {
    static var previews: some View {
        AnimalView3()
    }
}
