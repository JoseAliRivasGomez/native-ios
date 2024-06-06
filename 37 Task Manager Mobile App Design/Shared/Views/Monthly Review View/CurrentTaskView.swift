//
//  CurrentTaskView.swift
//  Task Manager Mobile App Design (iOS)
//
//  Created by Ron Erez on 5/3/22.
//

import SwiftUI

struct CurrentTaskView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 7) {
                Text("Mobile App Design")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(white)
                
                Text("Mike and Anita")
                    .font(.headline)
                    .fontWeight(.thin)
                    .foregroundColor(white)
                
                HStack {
                    let circleSize: CGFloat = 40
                    
                    HStack(spacing: -10) {
                        CircleImageView(
                            imageName: person1,
                            color: white,
                            size: circleSize,
                            lineWidth: 2)

                        CircleImageView(
                            imageName: person2,
                            color: white,
                            size: circleSize,
                            lineWidth: 2)

                    }
                    Spacer()
                    Text("Now")
                        .foregroundColor(white)
                }
            }
            Spacer()
        }
        .padding()
        .background(purple3)
        .cornerRadius(20)
        .shadow(radius: 10)
        .padding()
    }
}

struct CurrentTaskView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            purple1.ignoresSafeArea()
            CurrentTaskView()
        }
    }
}
