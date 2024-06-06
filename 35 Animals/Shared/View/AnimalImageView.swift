

import SwiftUI

struct AnimalImageView: View {
    var animalModel: AnimalModel
    
    let dim: CGFloat = 0.9 * UIScreen.main.bounds.size.width

    var body: some View {
        Image( animalModel.image.rawValue)
            .resizable()
            .frame(width: dim, height: dim)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay( Circle().stroke( animalModel.color, lineWidth: 15))
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .frame(width: UIScreen.screenWidth, height: UIScreen.screenWidth)
    }
}

struct AnimalImageView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalImageView(
            animalModel: AnimalModel(image: .dog1, color: Color(red: 141/255, green: 203/255, blue: 216/255), name: [
                Language.english:["Dog"],
                Language.spanish:["Perro", "Perra"],
                Language.french:["Chien", "Chienne"]
                ]
                ))
    }
}
