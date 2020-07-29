//
//  QuizModal.swift
//  QuizApp
//
//  Created by Osama Fahim on 22/07/2020.
//  Copyright © 2020 Gwinyai. All rights reserved.
//

import Foundation
import UIKit

struct QuizQuestion {
    
    var question: String
    var answer: Bool
    var image: UIImage
}

class QuizModal {
    
    private var questions : [QuizQuestion] = [
        QuizQuestion(question: "Is this a tree?", answer: true, image: UIImage(named: "tree")!),
        QuizQuestion(question: "Is this a dog?", answer: false, image: UIImage(named: "car")!),
        QuizQuestion(question: "Is this a persone?", answer: false, image: UIImage(named: "mug")!)]
    
    private var score : Int = 0
    private var questionIndex : Int = 0
    
    func getScore () -> String {
        return "\(score) \\ \(questions.count)"
    }
    
    func getQuestion() -> QuizQuestion {
        return questions [questionIndex]
    }
    
    func checkQuestion(answer: Bool) -> Bool {
        
        let question = getQuestion()
        
        if question.answer == answer {
            score += 1
            return true
        }
            return false
    }
    
    func nextQuestion() -> Bool {
        
        questionIndex += 1
        
        if questionIndex >= questions.count {
            return false
        }
        
            return true
    }
    
    func resetQuestion(){
        questionIndex = 0
        score = 0
    }
    
}
