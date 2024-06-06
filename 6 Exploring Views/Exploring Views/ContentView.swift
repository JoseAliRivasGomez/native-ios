

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStackDemo()
        }
    }
}

struct HStackDemo: View {
    var body: some View {
        HStack(spacing: 50) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .padding()
                .background(Color.green)
                .cornerRadius(10)
                .rotationEffect(Angle(degrees: 45))
            
            
            Text("Hello, world!")
                .padding()
                .background(Color.red)
                .cornerRadius(10)
                .rotation3DEffect(Angle(degrees: 30),
                                  axis: (x: 1, y: 1, z: 0))
            
            Text("Hello Everyone!")
                .font(.title)
                .fontWeight(.semibold)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
            
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
