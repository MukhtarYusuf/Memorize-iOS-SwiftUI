//
//  MemoryGame.swift
//  Memorize
//
//  Created by Mukhtar Yusuf on 2/17/23.
//

import Foundation

struct MemoryGame<CardContent> where CardContent: Equatable {
    private(set) var cards: [Card]
    private var indexOfTheOneAndOnlyFaceUpCard: Int? {
        get {
            cards.indices.filter { cards[$0].isFaceUp }.oneAndOnly
        }
        set {
            cards.indices.forEach {
                cards[$0].isFaceUp = ($0 == newValue)
            }
        }
    }
    
}
