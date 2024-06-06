
import SwiftUI
import SwiftData

@main
struct Adding_GameApp: App {
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .modelContainer(for: HighScoreEntity.self)
        }
    }
}
