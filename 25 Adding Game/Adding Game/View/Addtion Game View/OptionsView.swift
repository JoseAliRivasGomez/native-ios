
import SwiftUI

struct OptionsView: View {
    let gameVM: AdditionGameViewModel
    
    let columns = [
        GridItem(.flexible()),GridItem(.flexible())
        ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(gameVM.possibleSolutions, id: \.self) { option in
                    
                SelectButton(
                    option: option,
                    gameVM: gameVM)
                
            }
        }
        .padding()
    }
}

struct SelectButton: View {
    let option: Int
    @State var selectedOption: Int? = nil
    let gameVM: AdditionGameViewModel
    
    var isSelected: Bool {
        selectedOption == option
    }
    
    var scale: CGFloat {
        isSelected ? 1.2 : 1.0
    }
    
    var color: Color {
        isSelected ? getRandomColor() :
            .purple.opacity(0.7)
    }
    
    func getRandomColor() -> Color {
        [.green.opacity(0.7),
         .red,
         .blue.opacity(0.5)]
            .randomElement() ?? .green.opacity(0.7)
    }
    
    var body: some View {
        BubbleView(
            textColor: .black,
            bgColor: color,
            name: "bubble2",
            text: "\(option)")
            .scaleEffect( scale)
            .onTapGesture {
                withAnimation(.spring(response: 0.5, dampingFraction: 0.3)
                    .repeatCount(1, autoreverses: true)
                ) {
                    selectedOption = option
                }
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    withAnimation {
                        selectedOption = nil
                    }
                }
                
                withAnimation {
                    if gameVM.answer == option {
                        gameVM.increaseScore()
                    } else {
                        gameVM.loseLife()
                    }
                    gameVM.generateNumbers()
                }
            }
    }
}

struct SolutionsView_Previews: PreviewProvider {
    static var previews: some View {
        OptionsView(
            gameVM: AdditionGameViewModel())
    }
}
