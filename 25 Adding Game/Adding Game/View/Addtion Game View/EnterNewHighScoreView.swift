
import SwiftUI

struct EnterNewHighScoreView: View {
    let score: Int
    @Binding var name: String
    @Binding var isPresented: Bool
    @EnvironmentObject private var highScoreVM: HighScoreViewModel
    
    var body: some View {
        ZStack {
            BackgroundView(colorList: [.blue, .purple], opacity: 1)
            VStack {
                Text("New High Score!")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .padding()
                
                Text("\(score)")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                
                TextField("Name", text: $name)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .autocorrectionDisabled(true)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding()
                
                Button(action: {
                    name = name.isEmpty ? "Anon" : name
                    highScoreVM
                        .addHighScore(
                            name: name,
                            score: Int64(score))
                    isPresented = false
                }, label: {
                    Text("Save")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                })
            }
        }
    }
}

struct EnterNewHighScoreView_Previews: PreviewProvider {
    static var previews: some View {
        EnterNewHighScoreView(
            score: 123,
            name: .constant(""),
            isPresented: .constant(true))
            .environmentObject(HighScoreViewModel())
    }
}
