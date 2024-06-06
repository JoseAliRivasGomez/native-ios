
import SwiftUI

struct MainViewWithTitleAndBorder: View {
    @State var chartItem: ChartItem = .defaultChartItem
    @State var editTitle: Bool = false
    var borderColor: Color {
        .black
        .opacity(chartItem.showBorder ? 1.0 : 0.0)
    }
    var body: some View {
        VStack {
            // Top Buttons
            HStack {
                Button(action: {
                    withAnimation {
                        chartItem.editMode.toggle()
                    }
                }, label: {
                    Image(systemName: chartItem.editMode ? "checkmark" : "square.and.pencil")
                })
                
                if !chartItem.editMode {
                    Spacer()
                    
                    Button(action: {
                        withAnimation {
                            // TODO: Sharing
                        }
                    }, label: {
                        Image(systemName: "square.and.arrow.up")
                    })
                }
                
            }
            .padding(.top)

            
                
                // Buttons and Charts
                HStack {
                    // Left Chart Buttons
                    if chartItem.editMode {
                        LeftChartButtonsView(chartItem: $chartItem)
                    }
                    VStack(alignment: chartItem.titleAlignment) {
                        if !editTitle {
                            Text(chartItem.title)
                                .font(.headline)
                                .fontWeight(.semibold)
                                .onTapGesture {
                                    editTitle.toggle()
                                }
                        } else {
                            TextField(chartItem.title,
                                      text: $chartItem.title)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .onSubmit {
                                editTitle.toggle()
                            }
                        }
                        
                        
                        // The Chart
                        ContentView(chartItem: $chartItem)
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke( borderColor)
                    )
                    .padding()
                    
                    // Right Chart Buttons
                    if chartItem.editMode {
                        RightChartButtonsView(chartItem: $chartItem)
                    }

                }
                
            

        }
    }
}

struct MainViewWithTitleAndBorder_Previews: PreviewProvider {
    static var previews: some View {
        MainViewWithTitleAndBorder()
    }
}
