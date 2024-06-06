
import SwiftUI

struct Title_Color_Solution_Two: View {
    let title = "I Love Hummus"
    var body: some View {
        NavigationStack {
            ZStack {
                TheTitleView(text: title)
                
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
            }
            .navigationTitle(title)
            .toolbar(.hidden)
        }
    }
}

struct TheTitleView: View {
    let text: String
    var body: some View {
        VStack {
            HStack {
                Text(text)
                    .foregroundColor(.red)
                    .font(.largeTitle)
                .fontWeight(.bold)
                Spacer()
            }.padding()
            Spacer()
        }

    }
}

struct Title_Color_Solution_Two_Previews: PreviewProvider {
    static var previews: some View {
        Title_Color_Solution_Two()
    }
}
