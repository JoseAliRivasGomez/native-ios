//
//  ContentView.swift
//  State Example
//
//  Created by Ron Erez on 30/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var bgColor: Color = .green
    var fontTitle: Font = .largeTitle
    var fontsubTitle: Font = .title
    @State private var titleName = "State Example"
    @State private var subtitleName = "Exploring State"
    @State private var leftImageRotation: CGFloat = 0
    @State private var rightImageRotation: CGFloat = 0
    @State private var leftImage = "sun.horizon"
    @State private var rightImage = "moon.zzz.fill"
    
    var body: some View {
        ZStack {
            bgColor
                .opacity(0.8)
                .ignoresSafeArea()
            
            VStack {
                
                VStack(alignment: .leading) {
                    Text(titleName)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text(subtitleName)
                        .font(.title)
                }
                .onTapGesture {
                    if titleName == "State Example" {
                        titleName = "Hello"
                    } else {
                        titleName = "State Example"
                    }
                    
                    subtitleName = subtitleName == "Exploring State" ? "Happy Coding!" : "Exploring State"
                }
                
                Spacer()
                
                HStack {
                    Image(systemName: leftImage)
                        .imageScale(.large)
                        .rotationEffect(
                            Angle(degrees: leftImageRotation)
                        )
                    
                    Image(systemName: rightImage)
                        .imageScale(.large)
                        .rotationEffect(
                            Angle(degrees: rightImageRotation)
                        )
                }
                .foregroundStyle(.black)
                .onTapGesture {
                    withAnimation {
                        leftImageRotation += 90
                        rightImageRotation -= 90
                    }

                }
                
                
                Spacer()
                
                
                HStack {
                    Button("Background", action: {
                        // Change Color
                        if bgColor == .green {
                            bgColor = .red
                        } else {
                            bgColor = .green
                        }
                    })
                    
                    Spacer()
                    
                    Button("Change Images", action: {
                        // Change Change Images
                        if leftImage == "sun.horizon"{
                            leftImage = "figure"
                        } else {
                            leftImage = "sun.horizon"
                        }
                        if rightImage == "moon.zzz.fill"{
                            rightImage = "figure.dance"
                        } else {
                            rightImage = "moon.zzz.fill"
                        }
                    })
                }
                .padding()
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
