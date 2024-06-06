
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Color
                .purple
                .opacity(0.2)
                .ignoresSafeArea()
            
            VStack {
                Image(systemName: "figure.walk.motion")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Welcome to iOS Development!")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.red)
                    .multilineTextAlignment(.center)
                
                Text("First App")
                    .font(.title)
                    .fontWeight(.thin)
                    .padding()
                    .background(Color.blue.opacity(0.7))
                
                Text("Coding is fun!")
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
