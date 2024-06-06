
import SwiftUI

struct LeftChartButtonsView: View {
    
    @Binding var chartItem: ChartItem
    
    var body: some View {
        VStack {
           Button(action: {
               withAnimation {
                   chartItem.chartType = .bar
               }
           }, label: {
               Text("BAR")
           })
            Spacer()
            Button(action: {
                withAnimation {
                    chartItem.chartType = .line
                }
            }, label: {
                Text("LINE")
            })
            Spacer()
            Button(action: {
                withAnimation {
                    chartItem.chartType = .area
                }
            }, label: {
                Text("AREA")
            })

            Spacer()
            
            ColorfulButtonView(
                chartItem: $chartItem,
                dim: 30,
                offset: 10,
                action: {})
        }
        .padding()
    }
}

struct ChartButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            LeftChartButtonsView(chartItem: .constant(.defaultChartItem))
            
            Spacer()

        }
        .previewInterfaceOrientation(.landscapeRight)
    }
}
