

import SwiftUI


struct GeneralGesturesSectionView: View {
    
    var body: some View {
        Section(content: {
            NavigationLink(#"General Gesture"#, destination: {
                AllGesturesDemo()
            })
        }, header: {
            Text("General Gesture Demo")
        })
    }
}


struct GeneralGesturesView_Previews: PreviewProvider {
    static var previews: some View {
        GeneralGesturesSectionView()
    }
}
