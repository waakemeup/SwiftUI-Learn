//
//  ContentView.swift
//  Memrise
//
//  Created by Ruby on 2021/7/13.
//

import SwiftUI

struct ContentView: View {
    var viewModel:EmojiMemoryGame
    var body: some View {
        return HStack {
            ForEach(viewModel.cards){ card in
                CardView(card:card).onTapGesture {
                    self.viewModel.choose(card: card)
                }
           }
        }
        .padding()
        .foregroundColor(Color.orange)
        .font(Font.largeTitle)
    }
}


struct CardView: View {
    var card:MemoryGame<String>.Card
    
    var body:some View {
        return ZStack{
            if card.isFaceUp{
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke()
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text(card.content)
            }
            else{
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}









struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}

