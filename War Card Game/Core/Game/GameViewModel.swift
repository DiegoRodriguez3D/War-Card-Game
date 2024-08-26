//
//  GameViewModel.swift
//  War Card Game
//
//  Created by Diego Rodriguez on 26/8/24.
//

import Foundation
import SwiftUI

class GameViewModel: ObservableObject {
    
    @Published var playerCard = "card7"
    @Published var cpuCard = "card13"
    
    @Published var playerScore = 0
    @Published var cpuScore = 0
    
    func deal() {
        //Randomize the players card
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + "\(playerCardValue)"
        
        //Randomize the cpus card
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + "\(cpuCardValue)"
        
        //Update the score
        if playerCardValue > cpuCardValue {
            playerScore += 1
        } else if playerCardValue < cpuCardValue {
            cpuScore += 1
        }
    }
}
