//
//  MagnificationStoreStateView.swift
//  Gestures Exploration
//
//  Created by Ron Erez on 22/06/2023.
//

import SwiftUI

struct MagnificationStoreStateView: View {
    
    @State private var changeScaleFactor: CGFloat = 0.0
    @Binding var scaleFactor: CGFloat
    
    var sumScaleFactor: CGFloat {
        changeScaleFactor + scaleFactor
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                NiceTextView(
                    text: /*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/,
                    bgColor: .black,
                    fgColor: .orange,
                    radius: 10)
                .scaleEffect( sumScaleFactor)
                .gesture(
                    MagnificationGesture()
                        .onChanged { value in
                            withAnimation(.spring()) {
                                // startScaleFactor will be the
                                // difference in scaling.
                                // Example: If value is 1.2 then
                                // the change in scale is 1.2 - 1
                                // in other words 0.2
                                changeScaleFactor = value - 1
                            }
                        }
                        .onEnded { value in
                            withAnimation(.spring()) {
                                // Update the scale factor.
                                scaleFactor += changeScaleFactor
                                
                                // Reset changeScaleFactor
                                changeScaleFactor = 0
                            }
                        }
                )
                
                Spacer()
            }
            .navigationTitle("Magnify and Store State")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
struct MagnificationStoreStateView_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationStoreStateView(scaleFactor: .constant(1))
    }
}
