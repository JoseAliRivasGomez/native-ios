

import SwiftUI

struct MonthlyReviewView: View {
    var body: some View {
        ZStack {
            
            LinearGradient(colors: [lightPurple,purple1], startPoint: .topTrailing, endPoint: .bottomLeading)
                .ignoresSafeArea()
            
            VStack {
                TopAvatarView()
                
                TitleView()
                
                CurrentTaskView()
                
                MonthlyReviewTitleView()
                
//                TaskSummaryView()
                
                FractionGridView()
                
                Spacer()

            }
        }
    }
}

struct MonthlyReviewView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MonthlyReviewView()
            MonthlyReviewView()
                .previewDevice("iPhone 13 mini")
            MonthlyReviewView()
                .previewDevice("iPhone 12 Pro Max")

        }
    }
}

