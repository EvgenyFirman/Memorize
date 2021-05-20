//
//  MemoryGame.swift
//  MemorizeApp
//
//  Created by Евгений Фирман on 19.05.2021.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card){
        print("Card chosen \(card)")
    }
    
    init(numberOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfCards{
            let content = cardContentFactory(pairIndex)
            cards.append(Card(isFaceUp: true, isMatched: true, content: content,id: pairIndex*2))
            cards.append(Card(isFaceUp: true, isMatched: true, content: content,id: pairIndex*2+1))
        }
    }
    struct Card: Identifiable {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
        var id: Int
    }
}
