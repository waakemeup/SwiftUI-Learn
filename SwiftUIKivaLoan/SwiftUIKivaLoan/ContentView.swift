//
//  ContentView.swift
//  SwiftUIKivaLoan
//
//  Created by Ruby on 2022/1/22.
//

import SwiftUI

struct ContentView: View {
    @State private var filterEnabled = false
    @State private var maximumLoanAmount = 10000.0
    @ObservedObject var loanStore = LoanStore()
    var body: some View {
        NavigationView {
            if self.filterEnabled {
                LoanFilterView(amount: self.$maximumLoanAmount)
                    .transition(.opacity)
            }
            List(loanStore.loans){ loan in
                LoanCellView(loan: loan)
                    .padding(.vertical,5)
            }
            .navigationBarTitle("Kiva Loan")
            .navigationBarItems(trailing:
                Button(action:{
                    withAnimation(.linear){
                        self.filterEnabled.toggle()
                        self.loanStore.filterLoans(maxAmount: Int(self.maximumLoanAmount))
                    }
                }){
                    Text("Filter")
                        .font(.subheadline)
                        .foregroundColor(.primary)
                }
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .onAppear(){
            self.loanStore.fetchLatestLoans()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
