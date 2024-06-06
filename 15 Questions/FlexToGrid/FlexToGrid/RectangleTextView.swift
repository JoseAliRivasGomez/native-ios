//
//  RectangleTextView.swift
//  FlexToGrid
//
//  Created by Ron Erez on 2/17/23.
//

import SwiftUI

struct RectangleTextView: View {
    let color: Color
    let text: String
    var body: some View {
        ZStack {
            Rectangle()
                .fill(color)
            Text(text)
                .font(.title)
                .fontWeight(.semibold)
        }.cornerRadius(10)
    }
}

struct RectangleTextView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleTextView(
            color: .red,
            text: "25%")
    }
}
