//
//  Memrory.swift
//  Memrise
//
//  Created by Ruby on 2021/7/14.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards :Array<Card>
    
    func choose(card:Card) {
        print("card chosen:\(card)")
    }
    
    init(numberOfPairsOfCards:Int,cardContentFactory:(Int)->CardContent){
        cards=Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content,id:pairIndex*2))
            cards.append(Card(content: content,id:pairIndex*2+1))
        }
    }
    
    struct Card:Identifiable {
        var isFaceUp:Bool = true
        var isMarched:Bool = false
        var content:CardContent
        var id:Int
    }
}

