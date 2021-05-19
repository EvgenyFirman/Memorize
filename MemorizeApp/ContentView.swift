//
//  ContentView.swift
//  MemorizeApp
//
//  Created by Евгений Фирман on 18.05.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return HStack{
            ForEach(0..<4) {_ in
                ItemView()
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
    var isFaceUp: Bool = false
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0).padding()
                Text("☠️").font(Font.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.orange).padding()
            }
            
        }.foregroundColor(Color.orange)
    }
}
