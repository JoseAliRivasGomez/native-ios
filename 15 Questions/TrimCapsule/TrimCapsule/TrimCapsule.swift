
import SwiftUI

struct TrimCapsule: View {
    let width: CGFloat?
    let height: CGFloat?
    let leftColor: Color
    let BGleftColor: Color
    let rightColor: Color
    let BGrightColor: Color
    let lineWidth: CGFloat
    let strokeColor: Color
    var body: some View {
        HStack(spacing: 0) {
            Rectangle()
                .fill(leftColor)
                .padding()
                .background(BGleftColor)
            
            Rectangle()
                .fill(rightColor)
                .padding()
                .background(BGrightColor)
        }
        .clipShape(Capsule())
        .overlay(
            Capsule()
                .trim(from: 0, to: 0.25)
                .stroke(strokeColor, lineWidth: lineWidth)
        )
        .overlay(
            Capsule()
                .trim(from: 0.75, to: 1)
                .stroke(strokeColor, lineWidth: lineWidth)
        )
        .frame(width: width, height: height)
    }
}

struct TrimCapsule_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            LinearGradient(colors: [.purple,.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                .opacity(0.1)
                .ignoresSafeArea()
            
            VStack {
                TrimCapsule(width: nil, height: 50, leftColor: .blue, BGleftColor: .blue.opacity(0.7), rightColor: .white, BGrightColor: .gray.opacity(0.2), lineWidth: 1, strokeColor: .gray)
                    .padding()
                
                TrimCapsule(width: 200, height: 50, leftColor: .green, BGleftColor: .blue.opacity(0.7), rightColor: .yellow, BGrightColor: .red.opacity(0.2), lineWidth: 3, strokeColor: .purple)
            }
        }
    }
}
