
import SwiftUI

struct YourBalanceView: View {
    var body: some View {
        ZStack {
            darkBackground
                .ignoresSafeArea()
            
            VStack {
                HeaderYourBalanceView()
                
                BalanceSubView()
                
                YourBalanceAmountView(
                    month: 6,
                    day: 14,
                    year: 2022,
                    amount: 27802.05,
                    percentage: 15,
                    isUp: true)
                
                YourBalanceActionsView()
                
                ActivitiesOfTheWeekHeader()
                
                MonthlyExpensesView()
                
                Spacer()
            }
        }
    }
}

struct ActivitiesOfTheWeekHeader: View {
    var body: some View {
        HStack {
            Text("Activities")
                .foregroundColor(white)
                .font(.title3.weight(.semibold))

            Spacer()
            TextView(text: "This Week", font: .caption)
                .padding(7)
                .padding(.horizontal)
                .background(darkBackground2)
                .clipShape(RoundedRectangle(cornerRadius: 15))
        }
        .padding(.horizontal)
        .padding(.vertical, 5)
    }
}



struct YourBalanceActionsView: View {
    let actionList: [(iconName: String, name: String, color: Color)] = [
        (iconName: "arrow.up", name: "Sent", color: .pink),
        (iconName: "arrow.down", name: "Receive", color: .green),
        (iconName: "dollarsign.square", name: "Loan", color: .yellow),
        (iconName: "icloud.and.arrow.up", name: "Topup", color: .blue)
    ]
    var body: some View {
        HStack {
            
            ForEach(0 ..< actionList.count-1) { i in
                ActionView(
                    iconName: actionList[i].iconName,
                    color: actionList[i].color,
                    name: actionList[i].name)
                
                Spacer()
            }
            ActionView(
                iconName: actionList[actionList.count-1].iconName,
                color: actionList[actionList.count-1].color,
                name: actionList[actionList.count-1].name)

        }
        .padding()
    }
}

struct ActionView: View {
    let iconName: String
    let color: Color
    let name: String
    
    var body: some View {
        VStack {
            Image(systemName: iconName)
                .foregroundColor(color)
                .frame(width: 50, height: 50)
                .background(darkBackground2)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            TextView(text: name, font: .caption)
        }
    }
}



struct HeaderYourBalanceView: View {
    let dim: CGFloat = 50
    var body: some View {
        HStack {
            Image(systemName: "line.horizontal.3.decrease")
                .font(.body.weight(.heavy))
                .frame(width: dim, height: dim)
                .foregroundColor(fontColor)
            Spacer()
            AvatarDefaultView(dim: 30)

        }.padding()
    }
}

struct YourBalanceAmountView: View {
    let month: Int
    let day: Int
    let year: Int
    let amount: Double
    let percentage: Int
    let isUp: Bool
    
    var body: some View {
        HStack {
            VStack(spacing: 10) {
                if month >= 1 && month <= 12 {
                    let cal = Calendar.current
                    let monthName = cal.monthSymbols[month-1]
                    HStack {
                        TextView(text: "\(monthName) \(day), \(year)", font: .caption)
                        Spacer()
                    }
                }
                    
                HStack {
                    Text("$\(amount, specifier: "%.2f")")
                        .foregroundColor(white)
                        .font(.title)
                        .fontWeight(.bold)

                    Spacer()
                    TextView(text: "\(percentage)%", font: .caption)
                        
                    
                    let imageName = isUp ? "arrow.up" : "arrow.down"
                    Image(systemName: imageName)
                        .foregroundColor(fontColor)
                        .font(.caption)
                }
            }
            
        }.padding()
            .background(darkBackground2)
            .cornerRadius(20)
            .padding(.horizontal)
        
    }
}




struct AvatarDefaultView: View {
    let dim: CGFloat
    var body: some View {
        Image(systemName: "person.crop.circle")
            .resizable()
            .frame(width: dim, height: dim)
            .foregroundColor(fontColor)
            .background(darkBackground2)
            .clipShape(Circle())
    }
}



struct BalanceSubView: View {
    var body: some View {
        HStack {
            TextView(text: "Your Balance", font: .title)
            Spacer()
        }.padding()
    }
}

struct MonthlyExpensesView: View {
    let barData: [(name: String,percentage: CGFloat)] = [
        (name: "Jan", percentage: 0.33),
        (name: "Feb", percentage: 0.33),
        (name: "Mar", percentage: 0.33),
        (name: "Apr", percentage: 0.33/2),
        (name: "May", percentage: 0.33/2),
        (name: "Jun", percentage: 0.33/2)
    ]

    var body: some View {
        HStack {
            ForEach(barData.indices) { i in
                FillBarView(name: barData[i].name, percentage: barData[i].percentage)
            }
        }.padding()
    }
}

struct YourBalanceView_Previews: PreviewProvider {
    static var previews: some View {
        YourBalanceView()
    }
}

