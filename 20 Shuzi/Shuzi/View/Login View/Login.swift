//
//  Login.swift
//  Shuzi
//
//  Created by Ron Erez on 29/11/2023.
// https://www.pexels.com/search/china/?color=19BA7B
//
// https://dribbble.com/shots/15266900-Mobile-app-login-screen-and-sign-up-flow

// https://www.reddit.com/r/SwiftUI/comments/181py2x/how_can_i_achieve_this_opacity_effect/



import SwiftUI

struct Login: View {
    @State private var email: String = ""
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Image("login")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .offset(x: -300)
                    .frame(width: geo.size.width, height: geo.size.height)
                
                VStack {
                    Spacer()
                    
                    Text("Hi!")
                        .bold()
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    VStack {
                        TextField(text: $email, prompt: Text("Email"), label: {
                            Text("Hello")
                                .background(Color.white)
                        })
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 5)
                                .fill(.white)
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.red, lineWidth: 0.5)
                        )
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Continue")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .fill(Color.red.opacity(0.9))
                                )
                                .foregroundStyle(.white)
                                .fontWeight(.semibold)
                                
                        })
                        
                        Text("or")
                            .foregroundStyle(.white)
                            .fontWeight(.semibold)
                            .padding()
                        
                        LabeledButton(text: "Continue with Facebook", iconName: "login")
                        
                        LabeledButton(text: "Continue with Facebook", iconName: "login")
                        
                        LabeledButton(text: "Continue with Facebook", iconName: "login")
                    }
                    .padding()
                    .background(Material.ultraThin, in: RoundedRectangle(cornerRadius: 15))
                }
                .padding()
            }
        }
    }
}

struct LabeledButton: View {
    let text: String
    let iconName: String
    
    var body: some View {
        Label(
            title: { Text( text).padding(.horizontal) },
            icon: { Image(iconName)
                    .resizable()
                    .frame(width: 30, height: 30)
                }
        )
            .foregroundStyle(.black)
            .fontWeight(.semibold)
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white.opacity(0.9))
            )
    }
}

#Preview {
    Login()
}
