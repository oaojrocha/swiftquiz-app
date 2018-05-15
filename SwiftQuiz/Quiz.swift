//
//  Quiz.swift
//  SwiftQuiz
//
//  Created by School Picture Dev on 15/05/18.
//  Copyright © 2018 Joao Rocha. All rights reserved.
//

import Foundation

class Quiz {
    
    let question: String
    let options: [String]
    private let correctedAnswer: String
    
    init(question: String, options: [String], correctedAnswer: String) {
        self.question = question
        self.options = options
        self.correctedAnswer = correctedAnswer
    }
    
    func validateOption (_ index: Int) -> Bool {
        return options[index] == correctedAnswer
    }
    
    deinit {
        print("Liberou quiz da memória")
    }
}

