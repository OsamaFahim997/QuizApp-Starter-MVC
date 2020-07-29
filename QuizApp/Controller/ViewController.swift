//
//  ViewController.swift
//  QuizApp
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionImage: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    
    let quiz = QuizModal()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialQuestion()
        
    }
    
    func initialQuestion() {
        let question = quiz.getQuestion()
        questionImage.image = question.image
        questionLabel.text = question.question
    }
    
    override func viewWillAppear(_ animated: Bool) {
    }
    
    @IBAction func trueButtonPressed(_ sender: Any) {
        
        let result = quiz.checkQuestion(answer: true)
        showResult(isCorrect: result)
        
    }
    
    @IBAction func falseButtonPressed(_ sender: Any) {
        let result = quiz.checkQuestion(answer: false)
        showResult(isCorrect: result)

    }
    
    func showResult (isCorrect correct: Bool){
        
        let title = correct ? "Correct" : "Incorrect"
        let message = correct ? "You got the right answer" : "You choose the wrong answer"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let nextAction = UIAlertAction(title: "Next Question", style: .default) { (action) in
            
            if self.quiz.nextQuestion() {
                
                self.initialQuestion()
                alert.dismiss(animated: true, completion: nil)
            }
            else{
                self.showScore()
            }
            
        }
        
        alert.addAction(nextAction)
        present(alert, animated: true, completion: nil)
        
        
    }
    
    func showScore(){
        let alert = UIAlertController(title: "Final Score", message: quiz.getScore(), preferredStyle: .alert)
        
        let nextAction = UIAlertAction(title: "Okay", style: .default) { (action) in
            
            self.quiz.resetQuestion()
            self.initialQuestion()
            alert.dismiss(animated: true, completion: nil)
            
        }
        
        alert.addAction(nextAction)
        present(alert, animated: true, completion: nil)
    }
    
}

