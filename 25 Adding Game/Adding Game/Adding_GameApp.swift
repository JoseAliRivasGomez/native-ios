
import SwiftUI

@main
struct Adding_GameApp: App {
    @StateObject var highScoreVM = HighScoreViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(highScoreVM)
        }
    }
}
