
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: {
                NewView()
            }, label: {
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("Hello, world!")
                }

            })
            .padding()
//            .navigationTitle("My Title")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("My Title")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
            }
        }
    }
}

struct NewView: View {
    var body: some View {
        ZStack {
            Color
                .pink
                .opacity(0.7)
                .ignoresSafeArea()
            
            Text("Hello")
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
