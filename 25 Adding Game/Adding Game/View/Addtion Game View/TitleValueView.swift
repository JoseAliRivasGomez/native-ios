
import SwiftUI

struct TitleValueView: View {
    let title: String
    let value: Int
    
    var body: some View {
        VStack {
            Text( title)
            Text("\(value)")
        }
        .font(.headline)
        .fontWeight(.bold)
        .foregroundColor(.white)

    }
}

struct TitleValueView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            GameBackgroundView()
            
            TitleValueView(title: "Score", value: 7)
        }
    }
}
