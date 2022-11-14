//
//  ScoreViewModel.swift
//  CodeHistory
//
//  Created by Abdullah Bilgin on 11/14/22.
//

import Foundation

struct ScoreViewModel {
    let correctGuess: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuess * 100 / (correctGuess + incorrectGuesses))
    }
}
