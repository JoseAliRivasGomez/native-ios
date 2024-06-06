
import SwiftUI

struct AnimalView1: View {
    @StateObject var animalViewModel: AnimalViewModel = AnimalViewModel()
    
    @StateObject var languageViewModel: LanguageViewModel = LanguageViewModel()
    
    @State private var currentLanguage: Language = .english
    
    @State private var currentImageIndex = 0
    
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
                
                
                let currentAnimalModel: AnimalModel = animalViewModel.animalModels[currentImageIndex]
                AnimalImageView(animalModel: currentAnimalModel)
                    .onTapGesture {
                        let animalName = currentAnimalModel.getAnimalName( lang: currentLanguage)
                        
                        utter(
                            text: animalName,
                            language: currentLanguage)
                    }
                
                HStack {
                    Image(systemName: "arrow.left.square")
                        .font(.largeTitle.bold())
                        .foregroundColor(.white)
                        .onTapGesture {                        currentImageIndex = (currentImageIndex - 1 + animalViewModel.animalModels.count) % animalViewModel.animalModels.count
                        }

                    Spacer()
                    
                    Image(systemName: "arrow.right.square")
                        .font(.largeTitle.bold())
                        .foregroundColor(.white)
                        .onTapGesture {
                            currentImageIndex = (currentImageIndex + 1) % animalViewModel.animalModels.count
                        }

                    
                }.padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalView1()
    }
}
