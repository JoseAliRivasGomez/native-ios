
import SwiftUI

struct RightChartButtonsView: View {
    @Binding var chartItem: ChartItem
        
    var body: some View {
        VStack(spacing: 50) {
        
            Button(action: {
                withAnimation {
                    chartItem.isVerticalChart.toggle()
                }
            }, label: {
                Image(systemName: "chart.bar.fill")
                    .rotationEffect(.degrees(chartItem.isVerticalChart ? 90 : 0))
                    .foregroundColor(.black.opacity(0.7))
            })
            
            TitleAlignmentButton(titleAlignment: $chartItem.titleAlignment)

        }
        .padding()

    }
}

struct RightChartButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            Spacer()
            RightChartButtonsView(chartItem: .constant(.defaultChartItem))
        }
        .previewInterfaceOrientation(.landscapeRight)
    }
}
