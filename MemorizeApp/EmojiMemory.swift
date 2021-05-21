//
//  EmojiMemory.swift
//  MemorizeApp
//  Created by Евгений Фирман on 19.05.2021.
//

import SwiftUI

class EmojiMemory: ObservableObject {
    
    // model initialization
    @Published private var model: MemoryGame<String> = EmojiMemory.createMemoryGame()
    
   static func createMemoryGame() -> MemoryGame<String>{
        let emojis: Array<String> = ["🎃","👻"]
        return MemoryGame<String>(numberOfCards: 2) { pairIndex in
            return emojis[pairIndex]
        }
   }
        
       
        
        // MARK: - Access to the model
        var cards: Array<MemoryGame<String>.Card> {
                return model.cards
        }
        // MARK: - Intent(s)
        func choose(card: MemoryGame<String>.Card){
            model.choose(card: card)
        }
    }

