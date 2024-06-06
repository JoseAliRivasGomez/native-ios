
import SwiftUI

struct AnimalView2: View {
    @StateObject var animalViewModel: AnimalViewModel = AnimalViewModel()
    
    @StateObject var languageViewModel: LanguageViewModel = LanguageViewModel()
    
    @State private var currentLanguage: Language = .english
    
    @State private var currentImageIndex = 0
    let screenWidth = UIScreen.screenWidth
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
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 0) {
                        ForEach( animalViewModel.animalModels) { animalModel in
                            AnimalImageView(animalModel: animalModel)
                                .onTapGesture {
                                    let animalName = animalModel.getAnimalName( lang: currentLanguage)
                                    
                                    utter(
                                        text: animalName,
                                        language: currentLanguage)
                            }
                        }

                    }.frame( height: screenWidth, alignment: .leading)
                }


            }
        }
    }
}

struct AnimalView2_Previews: PreviewProvider {
    static var previews: some View {
        AnimalView2()
    }
}
