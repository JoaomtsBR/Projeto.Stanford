//
//  EmojiMemoryGameView.swift
//  Memorize Game
//
//  Created by João Matheus on 03/03/23.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    var viewModel: EmojiMemoryGame 
    var body: some View {
        return HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    viewModel.choose(card: card)
                }
            }
    
        }
            .foregroundColor(Color.orange)
            .padding()
            .font(Font.largeTitle)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp{
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
    }
}
