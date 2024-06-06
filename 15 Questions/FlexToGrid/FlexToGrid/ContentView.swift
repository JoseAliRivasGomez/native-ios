//
//  ContentView.swift
//  FlexToGrid
//
//  Created by Ron Erez on 2/17/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.cyan.opacity(0.3).ignoresSafeArea()
            Grid(verticalSpacing: 0) {
                GridRow {
                    MyImageNiew(imageName: "imgPurpleLightening")
                }
                GridRow {
                    Grid(verticalSpacing: 0) {
                        GridRow {
                            RectangleTextView(
                                color: .red,
                                text: "25%")
                        }
                        GridRow {
                            RectangleTextView(
                                color: .green,
                                text: "25%")
                        }

                    }
                }
            }
            .padding(.horizontal)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
