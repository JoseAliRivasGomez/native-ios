
import SwiftUI
import Charts

enum ChartType {
    case bar, line, area
}

struct ContentView: View {
    @Binding var chartItem: ChartItem
    
    let xAxisMarkPosition: AxisMarkPosition = .bottom
    let yAxisMarkPosition: AxisMarkPosition = .leading

    var body: some View {
        // The Chart
        if chartItem.isVerticalChart {
            switch(chartItem.chartType) {
            case .bar:
                BarChartVerticalView(chartItem: $chartItem)
            case .line, .area:
                LineAreaChartVerticalView(chartItem: $chartItem)
            }
        } else {
            switch(chartItem.chartType) {
            case .bar:
                BarChartHorizontalView(chartItem: $chartItem)
            case .line, .area:
                LineAreaChartHorizontalView(chartItem: $chartItem)
            }
        }         
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(chartItem: .constant(.defaultChartItem))
        .previewInterfaceOrientation(.landscapeRight)
    }
}
