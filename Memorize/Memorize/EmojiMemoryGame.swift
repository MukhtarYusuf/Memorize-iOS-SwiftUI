//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Mukhtar Yusuf on 2/17/23.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["🚂", "🚀", "🚁", "🚜", "🚗", "🚕", "🚙", "🛵", "🚝", "⛴", "⛵️", "🛰", "🛸", "🏍", "🚛", "🚜", "🚲"]
    
    @Published private var model = createMemoryGame()
    
    var cards: [Card] {
        return model.cards
    }
    
}

/*
 [2, 3, 1]
 */
