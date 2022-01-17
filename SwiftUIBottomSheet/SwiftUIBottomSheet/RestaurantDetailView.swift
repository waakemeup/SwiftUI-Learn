//
//  RestaurantDetailView.swift
//  SwiftUIBottomSheet
//
//  Created by Ruby on 2022/1/17.
//

import SwiftUI

struct RestaurantDetailView: View {
    let restaurant:Restaurant
    var body: some View {
        GeometryReader{ geometry in
            VStack {
                Spacer()
                
                HandleBar()
                
                ScrollView(.vertical){
                        
                    TitleBar()
                    
                    HeaderView(restaurant:self.restaurant )
                    
                    DetailInfoView(icon: "map", info: self.restaurant.location).padding(.top)
                    DetailInfoView(icon: "phone", info: self.restaurant.phone)
                    DetailInfoView(icon: nil, info: self.restaurant.description).padding(.top)
                }
                .background(.white)
                .cornerRadius(10,antialiased: true)
            }
            .offset(y:geometry.size.height/2)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct RestaurantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantDetailView(restaurant: restaurants[0])
            .background(Color.black.opacity(0.3))
            .edgesIgnoringSafeArea(.all)
    }
}

struct HandleBar:View {
    var body: some View{
        Rectangle()
            .frame(width:50,height:5)
            .foregroundColor(Color(.systemGray5))
            .cornerRadius(10)
    }
}

struct TitleBar:View {
    var body: some View {
        HStack{
            Text("Restaurant Details")
                .font(.headline)
                .foregroundColor(.primary)
            
            Spacer()
        }
        .padding()
    }
}


struct HeaderView:View {
    let restaurant:Restaurant
    
    var body: some View {
        Image(restaurant.image)
            .resizable()
            .scaledToFill()
            .frame(height:300)
            .clipped()
            .overlay(
                HStack{
                    VStack(alignment:.leading){
                        Spacer()
                        Text(restaurant.name)
                            .foregroundColor(.white)
                            .font(.system(.largeTitle,design: .rounded))
                            .bold()
                        
                        Text(restaurant.type)
                            .font(.system(.headline,design: .rounded))
                            .padding(5)
                            .foregroundColor(.white)
                            .background(.red)
                            .cornerRadius(5)
                         
                    }
                    Spacer()
                }
                .padding()
            )
    }
}


struct DetailInfoView:View {
    let icon:String?
    let info:String
    
    var body: some View {
        HStack {
            if icon != nil {
                Image(systemName:icon!)
                    .padding(.trailing,10)
            }
            Text(info)
                .font(.system(.body,design: .rounded))
            
            Spacer()
        }.padding(.horizontal)
    }
}


