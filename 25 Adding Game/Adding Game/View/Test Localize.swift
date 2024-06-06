
import SwiftUI

struct Test_Localize: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Game Over")
            Text("Score")
            Text("Level")
            Text("Game")
            Text("High Scores")
            Text("Rank")
            Text("Name")
            Text("Save")
        }
        .font(.title)
    }
}

struct Test_Localize_Previews: PreviewProvider {
    static var previews: some View {
        Test_Localize()
    }
}
