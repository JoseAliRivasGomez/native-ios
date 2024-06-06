

import SwiftUI

struct MessageView: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.headline)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding()
            .background(Color.cyan
                .cornerRadius(5))
            .shadow(radius: 3)
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(text: "Image of lightening")
    }
}
