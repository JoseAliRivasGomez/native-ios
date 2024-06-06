
import SwiftUI

struct SimpleTitleButtonView: View {
    @Binding var titleAlignment: HorizontalAlignment
    let myAlignment: HorizontalAlignment
    let iconName: String
    
    let selectedOpacity = 0.7
    let deselectedOpacity = 0.3

    var body: some View {
        Button(action: {
            withAnimation {
                titleAlignment = myAlignment
            }
        }, label: {
            Image(systemName: iconName)
                .foregroundColor(.black
                    .opacity( titleAlignment == myAlignment ? selectedOpacity : deselectedOpacity)
                )
        })
    }
}

struct SimpleTitleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 100) {
            SimpleTitleButtonView(titleAlignment: .constant(.center), myAlignment: .center, iconName: "align.horizontal.center.fill")
            
            SimpleTitleButtonView(titleAlignment: .constant(.center), myAlignment: .leading, iconName: "align.horizontal.center.fill")

        }
    }
}
