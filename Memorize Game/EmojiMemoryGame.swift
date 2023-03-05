//
//  EmojiMemoryGame.swift
//  Memorize Game
//
//  Created by João Matheus on 03/03/23.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
   static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🎃","🕷️"]
       return MemoryGame<String>(numberOfPairsOfCards: emojis.count) {pairIndex in
            return emojis[pairIndex]
        }
    }
    
    //MARKET: Acesso ao Model
    var cards: Array<MemoryGame<String>.Card>{
        model.cards
    }
    
    // MARKET: Intent(s)
    
    func choose(card: MemoryGame <String>.Card){
        model.choose(card: card)
    }
}
