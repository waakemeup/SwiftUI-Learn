//
//  ContentView.swift
//  SwiftUIActionSheet
//
//  Created by Ruby on 2022/1/12.
//

import SwiftUI

struct ContentView: View {
//    @State private var showActionSheet = false
    @State private var selectedRestaurant:Restaurant?
    
    @State var restaurants = [ Restaurant(name: "Cafe Deadend", image: "cafedeadend"),
                   Restaurant(name: "Homei", image: "homei"),
                   Restaurant(name: "Teakha", image: "teakha"),
                   Restaurant(name: "Cafe Loisl", image: "cafeloisl"),
                   Restaurant(name: "Petite Oyster", image: "petiteoyster"),
                   Restaurant(name: "For Kee Restaurant", image: "forkeerestaurant"),
                   Restaurant(name: "Po's Atelier", image: "posatelier"),
                   Restaurant(name: "Bourke Street Bakery", image: "bourkestreetbakery"),
                   Restaurant(name: "Haigh's Chocolate", image: "haighschocolate"),
                   Restaurant(name: "Palomino Espresso", image: "palominoespresso"),
                   Restaurant(name: "Homei", image: "upstate"),
                   Restaurant(name: "Traif", image: "traif"),
                   Restaurant(name: "Graham Avenue Meats And Deli", image: "grahamavenuemeats"),
                   Restaurant(name: "Waffle & Wolf", image: "wafflewolf"),
                   Restaurant(name: "Five Leaves", image: "fiveleaves"),
                   Restaurant(name: "Cafe Lore", image: "cafelore"),
                   Restaurant(name: "Confessional", image: "confessional"),
                   Restaurant(name: "Barrafina", image: "barrafina"),
                   Restaurant(name: "Donostia", image: "donostia"),
                   Restaurant(name: "Royal Oak", image: "royaloak"),
                   Restaurant(name: "CASK Pub and Kitchen", image: "caskpubkitchen")
    ]
    
    var body: some View {
        List {
            ForEach(restaurants) { restaurant in
                BasicImageRow(restaurant: restaurant)
                    .contextMenu {
                        Button(action:{
                            //delete the selected image
                            self.delete(item: restaurant)
                        }){
                            HStack{
                                Text("Delete")
                                Image(systemName:"trash")
                            }
                        }
                        
                        Button(action:{
                            //make the selected image favor
                            self.setFavorite(item: restaurant)
                        }){
                            HStack{
                                Text("Favorite")
                                Image(systemName:"star")
                            }
                        }
                    }
                    .onTapGesture {
//                        self.showActionSheet.toggle()
                        self.selectedRestaurant = restaurant
                    }
//                    .actionSheet(isPresented:self.$showActionSheet){
//                        ActionSheet(title:Text("What do you want to do"),message:nil,buttons: [
//                            .default(Text("Mark as Favorite"),action: {
//                                if let selectedRestaurant = self.selectedRestaurant{
//                                    self.setFavorite(item: selectedRestaurant)
//                                }
//                            }),
//                            .destructive(Text("Delete"),action:{
//                                if let selectedRestaurant = self.selectedRestaurant {
//                                    self.delete(item: selectedRestaurant)
//                                }
//                            }),
//                            .cancel()
//                        ])
//                    }
                    .actionSheet(item:self.$selectedRestaurant){
                        restaurant in
                        ActionSheet(title: Text("What you want to do"),message: nil,buttons:[
                            .default(Text("Mark as Favorite"),action: {
                                self.setFavorite(item: restaurant)
                            }),
                            .destructive(Text("Delete"),action:{
                                self.delete(item:restaurant)
                            }),
                            .cancel()
                        ])
                    }
            }
            .onDelete { (indexSet) in
                self.restaurants.remove(atOffsets: indexSet)
            }
        }
    }
    private func delete(item restaurant:Restaurant){
        if let index = self.restaurants.firstIndex(where:{
            $0.id == restaurant.id
        }){
            self.restaurants.remove(at:index)
        }
    }
    
    private func setFavorite(item restaurant:Restaurant){
        if let index = self.restaurants.firstIndex(where: {
            $0.id == restaurant.id
        }){
            self.restaurants[index].isFavorite.toggle()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Restaurant: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var isFavorite: Bool = false
    var isCheckIn: Bool = false
}

struct BasicImageRow: View {
    var restaurant: Restaurant
    
    var body: some View {
        HStack {
            Image(restaurant.image)
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(5)
            Text(restaurant.name)
            
            if restaurant.isFavorite {
                Spacer()
                Image(systemName:"star.fill")
                    .foregroundColor(.yellow)
            }
            
        }
    }
}
