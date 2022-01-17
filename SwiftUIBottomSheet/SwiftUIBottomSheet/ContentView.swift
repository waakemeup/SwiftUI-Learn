//
//  ContentView.swift
//  SwiftUIBottomSheet
//
//  Created by Ruby on 2022/1/17.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetail = false
    @State private var selectedRestaurant:Restaurant?
    
    var body: some View {
        ZStack {
            NavigationView {
                List{
                    ForEach(restaurants){ restaurant in
                        BasicImageRow(restaurant: restaurant)
                            .onTapGesture {
                                self.showDetail = true
                                self.selectedRestaurant = restaurant
                            }
                    }
                }
                .navigationBarTitle("Restaurants")
            }
            .offset(y:showDetail ? -100 : 0)
            .animation(.easeOut(duration:0.2))
            
            if showDetail {
                if let selectedRestaurant = selectedRestaurant{
                    RestaurantDetailView(isShow:$showDetail,restaurant: selectedRestaurant)
                        .transition(.move(edge: .bottom))
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BasicImageRow:View {
    var restaurant:Restaurant
    var body: some View {
        HStack{
            Image(restaurant.image)
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(5)
            Text(restaurant.name)
        }
    }
}


