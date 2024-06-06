

import SwiftUI

struct ContentView: View {
    let n = 6
    let colors: [Color] = [
        .green,.purple,.cyan,.pink,.teal,.blue,.yellow,.indigo,.orange,.brown
    ]
    var delta: Double {
        1.0 / Double(n)
    }
    var body: some View {
        VStack {
            Text("Players")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            Spacer()
            ZStack {
                Capsule()
                    .fill(.purple
                        .opacity(0.3))
                
                ForEach(0 ..< n, id: \.self) { i in
                    let start: Double=delta*Double(i)
                    let end: Double=start+delta
                    let color = colors[i%colors.count]
                    
                    Capsule()
                        .trim(from: start, to: end)
                        .stroke( color,
                                lineWidth: 25)
                        .blur(radius: 25)

                }
                ForEach(0 ..< n, id: \.self) { i in
                    let start: Double=delta*Double(i)
                    let end: Double=start+0.01
                    let color = colors[i%colors.count]
                    
                    Capsule()
                        .trim(from: start, to: end)
                        .stroke(
                            style: StrokeStyle(lineWidth: 30, lineCap: .round))
                        .stroke(color,
                                style:
                                    StrokeStyle(
                                        lineWidth: 5,
                                        lineCap: .round))
                }
            }
            .frame(width: 200, height: 400)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
