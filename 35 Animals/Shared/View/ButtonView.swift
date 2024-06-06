
import SwiftUI

struct ButtonView: View {
    var buttonName: String
    var flag: Flag?

    var body: some View {
        Button( action: {
        }) {
            VStack(spacing: 0) {
                Text( buttonName)
                    .font(.body)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    
                if let flag = flag {
                    Image(flag.rawValue)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .shadow(radius: 5)
                }
            }.padding()
        }
    }
}
struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            ButtonView(buttonName: "name", flag: Flag.UnitedStates)
        }
    }
}
