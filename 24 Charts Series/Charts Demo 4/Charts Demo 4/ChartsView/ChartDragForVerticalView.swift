
import SwiftUI

// ChartDragForVerticalView

struct ChartDragForVerticalView: ViewModifier {
    @Binding var chartItem: ChartItem
    @Binding var isDragging: Bool
    var min: Double {
        chartItem.min
    }
    var max: Double {
        chartItem.max
    }

    func body(content: Content) -> some View {
        let innerProxyColor: Color = .clear
        
        content
            .chartOverlay { proxy in
                GeometryReader { innerProxy in
                    Rectangle()
                        .fill(innerProxyColor)
                        .contentShape(Rectangle())
                        .gesture(
                        DragGesture()
                            .onChanged { value in
                                // TODO: Change
                                if chartItem.editMode {
                                    isDragging = true
                                    
                                    let location = value
                                        .location
                                    let (newDay, sales) =
                                    proxy
                                        .value(at: location, as: (String, Double).self) ?? ("error", -1)
                                    
                                    print(newDay)
                                    print(sales)
                                    
                                    // Update selected day
                                    chartItem.selectedDay = newDay
                                    
                                    setSalesOfSelectedDay(dailySales: &chartItem.dailySales, selectedDay: chartItem.selectedDay, sales: sales, min: min, max: max)
                                }
                            }
                            .onEnded { value in
                                isDragging = false
                            }
                        )
                }
            }
    }
}
