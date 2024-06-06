

import SwiftUI

struct MyImageView: View {
    var body: some View {
        Image("imgPurpleLightening")
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
            .shadow(radius: 5)
    }
}

struct MyImageView_Previews: PreviewProvider {
    static var previews: some View {
        MyImageView()
    }
}
