//
//  SquareCircle.swift
//  Task Manager Mobile App Design
//
//  Created by Ron Erez on 5/2/22.
//

import SwiftUI

struct SquareCircle: View {
    var body: some View {
        SquareCircleShape()
            .stroke(Color.red, lineWidth: 7)
            .frame(width: 250, height: 250)
    }
}

struct SquareCircleShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        // Move to upper left corner
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        
        // Move to the right (to maxX)
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        
        // Go down (by maxY and leave x unchanged)
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        
        let radius = (rect.maxX - rect.minX) / 2
        // Draw a semicircle
        // Centered at (midX, maxY)
        // rotate 180 degrees
        path.addArc(
            center: CGPoint(x: rect.midX, y: rect.maxY),
            radius: radius,
            startAngle: .degrees(0),
            endAngle: .degrees(180),
            clockwise: false)
        
        // Go back up to initial point
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        
        return path
    }
}

struct SquareCircle_Previews: PreviewProvider {
    static var previews: some View {
        SquareCircle()
    }
}
