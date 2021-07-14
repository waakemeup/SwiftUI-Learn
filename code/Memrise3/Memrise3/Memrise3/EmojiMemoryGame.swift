//
//  EmojiMemoryGame.swift
//  Memrise
//
//  Created by Ruby on 2021/7/14.
//

import SwiftUI

class EmojiMemoryGame {
    
    private var model:MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🥰","🥵","😅"]
        return MemoryGame<String>(numberOfPairsOfCards:emojis.count) { pairIndex in
           return emojis[pairIndex]
        }
    }
//    private(set) it's like a tranparent glass door
    var cards:Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    
    func choose(card:MemoryGame<String>.Card){
        return model.choose(card: card)
    }
}


