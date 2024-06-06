
import SwiftUI

struct ContentView: View {
    let colorList: [Color]
    var body: some View {
        SomeText()
            .overlay(
                LinearGradient(
                    colors: colorList,
                    startPoint: .leading,
                    endPoint: .trailing)
                    .mask(
                        SomeText()
                    )
            )
    }
}

struct SomeText: View {
    var body: some View {
        Text("Great Gravy Gradienting")
            .font(.largeTitle)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 50) {
            ContentView(colorList: [.yellow, .black.opacity(0.85), .orange])
            
            ContentView(colorList: [.purple, .gray, .blue])
            ContentView(colorList: [.red,.pink,.purple,.pink,.blue,.yellow])
        }
    }
}
