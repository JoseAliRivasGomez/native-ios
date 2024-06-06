

import SwiftUI

struct GesturesDemo: View {
    var body: some View {
        NavigationStack {
            Form {
                MagnificationSectionView()
                
                DragSectionView()
                
                RotationSectionView()
                
                GeneralGesturesSectionView()
            }
            .navigationTitle( "Gestures")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GesturesDemo()
    }
}
