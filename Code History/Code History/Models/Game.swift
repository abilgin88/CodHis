//
//  Game.swift
//  CodeHistory
//
//  Created by Abdullah Bilgin on 11/2/22.
//

import Foundation

struct game {
    
    private(set) var currentQuestionIndex = 0
    private(set) var guesses = [Question: Int]()
    private(set) var isOver = false
    private let questions = Question.allQuestions.shuffled()
    
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) {
         guesses[currentQuestion] = index
     }
    
    mutating func updateGameStatus() {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        } else {
            isOver = true
        }
    }
}
