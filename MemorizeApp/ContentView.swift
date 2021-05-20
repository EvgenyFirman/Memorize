//
//  ContentView.swift
//  MemorizeApp
//
//  Created by Евгений Фирман on 18.05.2021.
//

import SwiftUI

struct ContentView: View {
    var viewModel: 
    var body: some View {
        return HStack{
            ForEach(0..<4) {_ in
                ItemView(card: <#T##MemoryGame<String>.Card#>)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ItemView: View {
    var card: MemoryGame<String>.Card
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0).padding()
                Text(card.content).font(Font.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.orange).padding()
            }
            
        }.foregroundColor(Color.orange)
    }
}
