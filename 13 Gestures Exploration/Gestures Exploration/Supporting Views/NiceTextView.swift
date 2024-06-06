
import SwiftUI

struct NiceTextView: View {
    let text: String
    let bgColor: Color
    let fgColor: Color
    let radius: CGFloat
    var body: some View {
        Text( text)
            .font(.title)
            .fontWeight(.semibold)
            .foregroundColor(fgColor)
            .padding()
            .background(bgColor)
            .cornerRadius( radius)
    }
}

struct NiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        NiceTextView(
            text: "Hello, World!",
            bgColor: .black,
            fgColor: .orange,
            radius: 10)
    }
}
