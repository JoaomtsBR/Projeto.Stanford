//
//  Memorize_GameApp.swift
//  Memorize Game
//
//  Created by João Matheus on 03/03/23.
//

import SwiftUI

@main
struct Memorize_GameApp: App {
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: EmojiMemoryGame())
        }
    }
}
