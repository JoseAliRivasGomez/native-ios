//
//  CreaditCardPageView.swift
//  Finance App Dark Theme
//
//  Created by Ron Erez on 4/30/22.
//

import SwiftUI

struct CreditCardPageView: View {
    
    let transactions: [(imageName: String?, payTo: String, month: Int, day: Int, amount: Int, isExpense: Bool, isSystemIcon: Bool)] = [
    (imageName: hamburgerIcon,
     payTo: "KFC",
     month: 3,
     day: 20,
     amount: 2010,
     isExpense: true,
     isSystemIcon: false),
    (
        imageName: paypalIcon,
        payTo: "Paypal",
        month: 6,
        day: 28,
        amount: 12000,
        isExpense: false,
        isSystemIcon: false),
    (
        imageName: wrenchIcon,
        payTo: "Car Repair",
        month: 8,
        day: 12,
        amount: 232010,
        isExpense: true,
        isSystemIcon: false),
    (
        imageName: "dollarsign.circle",
        payTo: "Win Prize",
        month: 3,
        day: 24,
        amount: 1000000,
        isExpense: false,
        isSystemIcon: true)
    ]
    
    let numActiveCards = 3
    
    var body: some View {
        ZStack {
            darkBackground
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                
                TopView()
                
                YourCardsView(numActiveCard: numActiveCards)
                
                CreditCardView(creditCardNumber: "4562 1122 4595 7852",
                               name: "Ron Erez",
                expiryMonth: 1,
                expiryYear: 2027)

                
                TextView(text: "Recent Transactions", font: .title2.bold())
                    .padding()
                Spacer()
                ScrollView {
                    VStack(spacing: 10) {
                        
                        ForEach(0 ..< transactions.count) { i in
                            TransactionView(
                                imageName: transactions[i].imageName,
                                payTo: transactions[i].payTo,
                                month: transactions[i].month,
                                day: transactions[i].day,
                                amount: transactions[i].amount,
                                isExpense: transactions[i].isExpense,
                                isSystemIcon: transactions[i].isSystemIcon)
                        }
                        
                    }
                }
            }
        }
    }
}


struct CreditCardPageView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardPageView()
    }
}
