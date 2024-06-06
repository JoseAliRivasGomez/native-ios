
import Foundation
import SwiftUI

class AnimalViewModel: ObservableObject {
    @Published var animalModels: [AnimalModel] = []
    let currentIndex: Int = 0
    
    init() {
        animalModels.append(
            AnimalModel(image: .dog1, color: Color(red: 141/255, green: 203/255, blue: 216/255), name:
                    [
                        Language.english:["Dog"],
                        Language.spanish:["Perro", "Perra"],
                        Language.french:["Chien", "Chienne"]
                    ]
            ))
            
        animalModels.append(
            AnimalModel(image: .eagle1, color: .white, name:
                            [
                                Language.english:["Eagle"],
                                Language.spanish:["Águila", "Aguila "],
                                Language.french:["Aigle", "Aigle"]
                            ]
                ))
        
        animalModels.append(
            AnimalModel(image: .giraffe1, color: Color(red: 244/255, green: 226/255, blue: 198/255), name:                 [
                Language.english:["Giraffe"],
                Language.spanish:["Jirafa", "Jirafa"],
                Language.french:["Girafe", "Girafe"]
            ]
            ))
        
        animalModels.append(
            AnimalModel(image: .puppies1, color: .white, name:                  [
                Language.english:["Puppies", "Dogs", "Puppy", "Dog"],
                Language.spanish:["Cachorros","Perros","Cachorro","Perro"],
                Language.french:["Chiots", "Chiens", "Chiot", "Chien"]
            ]
        ))
        
        animalModels.append(
            AnimalModel(image: .cow1, color: Color(red: 248/255, green: 248/255, blue: 255/255), name:                     [
            Language.english:["Cow"],
            Language.spanish:["Vaca","Toro"],
            Language.french:["Vache", "Taureau"]
        ]))
        
        animalModels.append(
            AnimalModel(image: .gorilla1, color: .white, name:                     [
            Language.english:["Gorilla", "Monkey", "Ape"],
            Language.spanish:["Gorila"],
            Language.french:["Gorille"]
        ]))

        
        animalModels.append(
            AnimalModel(image: .puppy1, color: .black, name:                 [
                Language.english:["Puppy", "Dog"],
                Language.spanish:["Cachorro","Perro"],
                Language.french:["Chiot", "Chien"]
            ]))
        
        animalModels.append(
            AnimalModel(image: .cat1, color: .gray, name: [
                Language.english:["Cat"],
                Language.spanish:["Gato"],
                Language.french:["Chat", "Chatte"]
            ]))

        animalModels.append(
            AnimalModel(image: .panda1, color: .black, name: [
                Language.english:["Panda", "Bear"],
                Language.spanish:["Panda", "Oso"],
                Language.french:["Panda", "Ours"]
            ]))

        animalModels.append(
            AnimalModel(image: .koala1, color: .gray, name: [
                Language.english:["Koala", "Bear"],
                Language.spanish:["Koala", "Oso"],
                Language.french:["Koala", "Ours"]
            ]))
        }
}
