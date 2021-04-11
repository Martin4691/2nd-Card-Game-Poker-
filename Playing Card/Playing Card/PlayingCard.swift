//
//  PlayingCard.swift
//  Playing Card
//
//  Created by Martín on 11/4/21.
//

import Foundation


struct PlayingCard {
    
    var suit: Suit
    var rank: Rank
    
    enum Suit: String {
        case spades = "♠︎"
        case hearts = "♥︎"
        case diamonds = "♦︎"
        case clubs = "♣︎"
    
        static var all = [Suit.spades, .hearts, .diamonds, .clubs]
    }
    
    enum Rank {
        case ace
        case face(String)
        case numeric(Int)
        
        var order: Int {
            switch self {
            case .ace: return 1
            case .numeric
            case .face(let kind) where kind == "J": return 11
            case .face(let kind) where kind == "Q": return 12
            case .face(let kind) where kind == "K": return 13
            default: return 0
            }
            
            static var all: [Rank] {
                var allRanks = [Rank.ace]
                for pips in 2...10 {
                    allRanks.append(Rank.numeric(pips))
                }
                allRanks += [Rank.face("J"), .face("Q"), .face("K")]
                return allRanks
            }
            
        }
        
        
    }
    
}








