
import SwiftUI
import Charts

struct ContentView: View {
    
    let min = 0.0
    let max = 1000.0
    @State var isLegendVisible: Bool = false
    var body: some View {
        VStack {
            
            Text("Welcome to Charts!")
                .font(.largeTitle)
            
            Chart {
                BarMark(
                    x: .value("Day", "Sun"),
                    y: .value("Sales", 100))
                .annotation {
                    Image(systemName: "figure.walk.circle.fill")
                        .foregroundColor(.blueViolet)
                        .fontWeight(.bold)
                        .font(.title)
                }
                .foregroundStyle(
                    by: .value("Day", "Sun"))
                
                BarMark(
                    x: .value("Day", "Mon"),
                    y: .value("Sales", 250))
                //                .annotation(position: .bottom, alignment: .center) {
                //                    Image(systemName: "figure.dance")
                //                        .foregroundColor(.blueViolet)
                //                        .fontWeight(.bold)
                //                        .font(.title)
                //                }
                .foregroundStyle(
                    by: .value("Day", "Mon"))
                
                BarMark(
                    x: .value("Day", "Tues"),
                    y: .value("Sales", 75.3))
                .annotation(position: .bottomTrailing) {
                    Image(systemName: "figure.fishing")
                        .foregroundColor(.orangeRed)
                        .fontWeight(.bold)
                        .font(.title)
                }
                .foregroundStyle(
                    by: .value("Day", "Tues"))
                
                
                BarMark(
                    x: .value("Day", "Wed"),
                    y: .value("Sales", 850))
                .annotation {
                    Circle()
                        .stroke(lineWidth: 3)
                }
                .foregroundStyle(
                    by: .value("Day", "Wed"))
                
                BarMark(
                    x: .value("Day", "Thu"),
                    y: .value("Sales", 450))
                .annotation {
                    Rectangle()
                        .fill(Color.red)
                }
                .foregroundStyle(
                    by: .value("Day", "Thu"))
                
                BarMark(
                    x: .value("Day", "Fri"),
                    y: .value("Sales", 120.23))
                .foregroundStyle(
                    by: .value("Day", "Fri #1"))
                
                BarMark(
                    x: .value("Day", "Fri"),
                    y: .value("Sales", 250))
                .foregroundStyle(
                    by: .value("Day", "Fri #2"))
                
                BarMark(
                    x: .value("Day", "Sat"),
                    y: .value("Sales", 320))
                .foregroundStyle(
                    by: .value("Day", "Sat Group 1"))
                
                BarMark(
                    x: .value("Day", "Sat"),
                    y: .value("Sales", 400))
                .foregroundStyle(
                    by: .value("Day", "Sat Group 2"))
                
            }
            .chartYScale(domain: min...max)
            .chartXAxis {
                AxisMarks(position: .bottom)
            }
            .chartYAxis {
                AxisMarks(position: .leading)
            }
            .chartLegend(isLegendVisible ? .visible : .hidden)
            //            .chartLegend(position: .leading, alignment: .center, spacing: 100)
            .padding()
            
            Button(action: {
                withAnimation {
                    isLegendVisible
                        .toggle()
                }
            }, label: {
                Image(systemName: isLegendVisible ? "eye" : "eye.slash")
            })
            .padding()
            
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
