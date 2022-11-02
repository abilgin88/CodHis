//
//  Game.swift
//  CodeHistory
//
//  Created by Abdullah Bilgin on 11/2/22.
//

import Foundation

struct game {
    private(set) var guesses = [Question: Int]()
    private let questions = Question.allQuestions.shuffled()
    
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
        guesses[currentQuestion] = index
    }
}
