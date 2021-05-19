//
//  EmojiMemory.swift
//  MemorizeApp
//
//  Created by Евгений Фирман on 19.05.2021.
//

import SwiftUI

class EmojiMemory {
    private(set) var model: MemoryGame<String> = MemoryGame<String>(cards: <#T##Array<MemoryGame<String>.Card>#>)
    
    
    // MARK: - Access to the model
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    // MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
}
