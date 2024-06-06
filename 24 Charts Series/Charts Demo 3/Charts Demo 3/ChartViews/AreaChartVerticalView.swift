

import SwiftUI
import Charts

struct AreaChartVerticalView: View {
    let dailySales: [DailySalesType]
    
    var body: some View {
        Chart {
            ForEach(dailySales) { item in
                AreaMark(
                    x: .value("Day", item.day),
                    y: .value("Sales", item.sales))
            }
        }
    }
}

struct AreaChartVerticalView_Previews: PreviewProvider {
    static var previews: some View {
        AreaChartVerticalView(dailySales: defaultDailySales)
    }
}
