//
//  LazyVGridExplore.swift
//  Task Manager Mobile App Design (iOS)
//
//  Created by Ron Erez on 5/4/22.
//

import SwiftUI

struct LazyVGridExplore: View {
    let columns: [GridItem] = Array(repeating: GridItem(.fixed(170), spacing: 0), count: 2)

    let colors: [Color] = [.red, .green, .blue, .purple]
    let choices: [String] = [
    "Done",
    "OnGoing",
    "In Progress",
    "Working for Review"
    ]
    let numTasks: [Int] = [22,7,10,12]
    let heightFactor: [CGFloat] = [2/3,1/3,1/3,2/3]
    var body: some View {
        LazyHGrid( rows: columns, alignment: .top, spacing: 20) {

            ForEach(0..<colors.count, id: \.self) { i in
                CardView(
                    numTasks: numTasks[i],
                    color:colors[i],
                    text: choices[i],
                    heightFactor: heightFactor[i])
                    .padding(.vertical)
                    .onTapGesture {
                        print("Problem \(i)")
                    }
            }
        }

    }
}






struct LazyVGridExplore_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray.opacity(0.7).ignoresSafeArea()
            LazyVGridExplore()
        }
    }
}
