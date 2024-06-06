
import SwiftUI


struct GettingStartedView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("lightBlue1").ignoresSafeArea()
                
                VStack {
                    ImageHeader()
                    
                    Spacer()
                    
                    BottomOfGettingStartedView()
                    
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GettingStartedView()
        GettingStartedView()
            .preferredColorScheme(.dark)
    }
}
