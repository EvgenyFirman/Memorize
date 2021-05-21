//
//  ContentView.swift
//  MemorizeApp
//  Created by Евгений Фирман on 18.05.2021.

// Importing SwiftUI library
import SwiftUI


struct ContentView: View {
    // init emojiMemory Instance, observe changes
    @ObservedObject var viewModel: EmojiMemory
    
    var body: some View {
        // making an HStack
        return HStack{
            // Looping for each model card
            ForEach(viewModel.cards) {card in
                ItemView(card: card).onTapGesture(perform: {
                    viewModel.choose(card: card)
                })
            }
        }
    }
}

// Default contentView Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemory())
    }
}
// Extended ItemView
struct ItemView: View {
    var card: MemoryGame<String>.Card
    var body: some View {
        GeometryReader(content: { geometry in
            ZStack {
                if card.isFaceUp {
                    RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                    RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0).padding()
                    Text(card.content).font(Font.largeTitle)
                } else {
                    RoundedRectangle(cornerRadius: 10.0).fill(Color.orange).padding()
                }
                
            }.foregroundColor(Color.orange)
        })
        
    }
}
