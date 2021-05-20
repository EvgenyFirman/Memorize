//
//  MemorizeAppApp.swift
//  MemorizeApp
//
//  Created by Евгений Фирман on 18.05.2021.
//

import SwiftUI

@main
struct MemorizeAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: EmojiMemory())
        }
    }
}

