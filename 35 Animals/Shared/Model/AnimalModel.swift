
import Foundation
import SwiftUI

enum Language: String {
    case english = "English"
    case spanish = "Spanish"
    case french = "French"
}

func getLangCode( language: Language) -> String {
    var result = ""
    switch(language) {
    case .english:
        result = "en"
    case .spanish:
        result = "es"
    case .french:
        result = "fr"
    }
    return result
}

struct AnimalModel: Identifiable {
    let id = UUID()
    var image: AnimalImage
    var color: Color
    var name: [Language : [String]]
    
    func getAnimalName( lang: Language) -> String {
        return getFirstName(animalModel: self, lang: lang)
    }
    
    func getFirstName( animalModel: AnimalModel, lang: Language) -> String {
        return animalModel.name[lang]![0]
    }
}
