
import SwiftUI

struct AdditionGameView: View {
    @StateObject private var gameVM = AdditionGameViewModel()
    
    @EnvironmentObject private var highScoreVM: HighScoreViewModel
    
    @State private var highScoreViewIsPresented = false
    
    var showHighScore: Bool {
        gameVM.gameOver && highScoreVM
            .isNewHighScore( score: gameVM.score)
    }
    
    @State private var name: String = ""
    
    var showGameOverView: Bool {
        gameVM.gameOver
    }
    
    var body: some View {
        ZStack {
            GameBackgroundView()
            
            VStack {
                ScoreLivesView(
                    score: gameVM.score,
                    lives: gameVM.gameModel.lives,
                    maxLives: 3,
                    level: gameVM.gameModel.level)
                
                Spacer()
                
                BubbleView(
                    textColor: .white,
                    bgColor: Color.purple.opacity(0.7),
                    name: "bubble3",
                    text: "\(gameVM.number1) + \(gameVM.number2)")
                
                
                Spacer()
                
                OptionsView(gameVM: gameVM)
            }
            .padding()
            .blur(radius: showGameOverView ? 5 : 0)
            .disabled( showGameOverView)
            
            GameOverView()
                .padding()
                .blur(radius: showGameOverView ? 0 : 30)
                .opacity( showGameOverView ? 1 : 0)
                .disabled(!showGameOverView)
                .onTapGesture {
                    gameVM.reset()
                }

        }
        .fullScreenCover(
            isPresented: $highScoreViewIsPresented,
            onDismiss: {
                gameVM.reset()
            }) {
                EnterNewHighScoreView(
                    score: gameVM.score,
                    name: $name,
                    isPresented: $highScoreViewIsPresented)
            }
        .onChange(
            of: showHighScore,
            perform: { newValue in
                highScoreViewIsPresented = newValue
            })
    }
}

struct AdditionGameView_Previews: PreviewProvider {
    static var previews: some View {
        AdditionGameView()
            .environmentObject(HighScoreViewModel())
    }
}
