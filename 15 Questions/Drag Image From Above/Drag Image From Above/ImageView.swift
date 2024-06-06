
import SwiftUI

struct ImageView: View {
    @Binding var image: ImageModel
    @State var dragAmount = CGSize.zero
    @State var isTapped: Bool = false
    let returnDuration: Double = 0.3
    
    var isDragging: Bool {
        dragAmount != .zero
    }
    
    var drag: some Gesture {
        DragGesture(coordinateSpace: .global)
            .onChanged { value in
                withAnimation {
                    dragAmount = CGSize(
                        width: value.translation.width,
                        height: value.translation.height)
                    
                    image = ImageModel(
                        name: image.name,
                        color: image.color,
                        zIndex: 1.0)
                }
                
            }
            .onEnded { _ in
                withAnimation {
                    dragAmount = .zero
                    
                    DispatchQueue
                        .main
                        .asyncAfter(deadline: .now() + returnDuration) {
                            image = ImageModel(
                                name: image.name,
                                color: image.color,
                                zIndex: 0.0)

                        }
                }
            }
    }

    
    var body: some View {
        Image(systemName: image.name)
            .imageScale(.large)
            .foregroundColor(image.color)
            .padding()
            .background(
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                    .fill(
                    LinearGradient(
                        colors: [.black,.gray],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing))
                    
                    if dragAmount != .zero {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(image.color,
                            lineWidth: 3)
                            .blur(radius: 5)
                    }
                }
            )
            .opacity(
                isDragging ? 0.9 : 1.0
            )
            .zIndex(image
                .zIndex)
            .scaleEffect(
                isDragging ? 1.2 : 1.0
            )
            .offset(dragAmount)
            .scaleEffect(
                isTapped ? 1.1 : 1.0
            )
            .animation(
                .spring(response: 0.4, dampingFraction: 0.6),
                value: isTapped)
            .gesture(drag)
            .onTapGesture {
                isTapped = true
                image = ImageModel(name: image.name)
                DispatchQueue
                    .main
                    .asyncAfter(deadline: .now() + returnDuration) {
                        isTapped = false
                    }
            }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            LinearGradient(colors: [.blue,.purple], startPoint: .topLeading, endPoint: .bottomTrailing)
                .opacity(0.7)
                .ignoresSafeArea()
            VStack {
                Text("Hello World")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Spacer()
                ImageView(
                    image: .constant(
                        .init(
                            name: "menucard.fill",
                            color: .red)
                ))
                Spacer()
            }
        }
    }
}
