
import SwiftUI

struct ExploreViewLibrary: View {
    
    let text: [String] = ["Exploring Views", "Hello World"]
    @State var index = 0
    @State private var bgColor =
            Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)
    @State private var date = Date()

    @State private var speed = 50.0
    @State private var isEditing = false

    
    
    var body: some View {
        ZStack {
            bgColor.ignoresSafeArea()
            Form {
                Section(header: Text("Notifications")) {
                    Text( text[index])
                        .font(.largeTitle)
                        .padding()
                    
                    Button("A button") {
                        index = (index + 1) % text.count
                    }
                }
                Section(header: Text("User Profiles")) {
                    ColorPicker(/*@START_MENU_TOKEN@*/"Title"/*@END_MENU_TOKEN@*/, selection: $bgColor)
                        
                    DatePicker(selection: $date, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                    
                    Slider(
                        value: $speed,
                        in: 0...100,
                        onEditingChanged: { editing in
                            isEditing = editing
                        }
                    )
                    Text("Speed is: \(speed)")
                    if speed > 80 {
                        withAnimation {
                            Text("Slow down !")
                        }
                        
                    }

                }
            }
        }
    }
}

struct ExploreViewLibrary_Previews: PreviewProvider {
    static var previews: some View {
        ExploreViewLibrary()
    }
}
