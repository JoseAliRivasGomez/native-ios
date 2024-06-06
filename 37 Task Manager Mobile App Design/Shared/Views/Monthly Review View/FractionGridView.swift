//
//  FractionGridView.swift
//  Task Manager Mobile App Design (iOS)
//
//  Created by Ron Erez on 5/4/22.
//

import SwiftUI

struct FractionGridView: View {
    let choices: [String] = [
    "Done",
    "OnGoing",
    "In Progress",
    "Working for Review"
    ]
    let numTasks: [Int] = [22,7,10,12]
//    let heightFactor: [CGFloat] = [2/3,1/3,1/3,2/3]
    let heightFactor: [CGFloat] = [7/12,5/12,5/12,7/12]
//    let colors: [Color] = [.red, .green, .blue, .purple]
    let colors: [Color] = [purple3,purple3,purple3,purple3]
    var body: some View {
        HStack(spacing: 20) {
            VStack(spacing: 20) {
                ForEach(0..<2, id: \.self) { i in
                    CardView(
                        numTasks: numTasks[i],
                        color:colors[i],
                        text: choices[i],
                        heightFactor: heightFactor[i])
                        
                        .onTapGesture {
                            print("Problem \(i)")
                        }
                }
            }
            
            VStack(spacing: 20) {
                ForEach(2..<4, id: \.self) { i in
                    CardView(
                        numTasks: numTasks[i],
                        color:colors[i],
                        text: choices[i],
                        heightFactor: heightFactor[i])
                        
                        .onTapGesture {
                            print("Problem \(i)")
                        }
                }
            }
        }
    }
}

struct CardView: View {
    let numTasks: Int
    let color: Color
    let text: String
    let heightFactor: CGFloat
    var body: some View {
        VStack(spacing: 10) {
            Text("\(numTasks)")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)

            Text(text.capitalized)
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }.frame(width: 150, height: heightFactor*250, alignment: .center)
            .background(color.cornerRadius(25))
            .shadow(radius: 0.5)
    }
}

struct FractionGridView_Previews: PreviewProvider {
    static var previews: some View {
        FractionGridView()
    }
}
