//
//  CircleImageView.swift
//  Task Manager Mobile App Design (iOS)
//
//  Created by Ron Erez on 5/3/22.
//

import SwiftUI

struct CircleImageView: View {
    let imageName: String
    let color: Color
    let size: CGFloat
    let lineWidth: CGFloat
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
            .overlay(Circle().stroke(color, lineWidth: lineWidth))
            .frame(maxWidth: size, maxHeight: size)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    let size = 75
    static var previews: some View {
        ZStack {
            purple1.ignoresSafeArea()
            VStack {
                CircleImageView(imageName: person1, color: white, size: 100, lineWidth: 2)
                
                CircleImageView(imageName: person2, color: white, size: 100, lineWidth: 2)
                
                CircleImageView(imageName: person3, color: white, size: 100, lineWidth: 2)
                
                CircleImageView(imageName: person4, color: white, size: 100, lineWidth: 2)
            }
        }
    }
}
