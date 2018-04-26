//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var questions: [Question] = QuestionBank().questions
    var progressIndex: Int = 0
    var score: Int = 0
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerPressed(_ sender: AnyObject) {
        var pickedAnswer: Bool
        
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else {
            pickedAnswer = false
        }
        
        checkAnswer(pickedAnswer: pickedAnswer)
        nextQuestion()
    }
    
    func updateUI() {
        questionLabel.text = questions[progressIndex].question
        updateCompletionLabel()
        updateScoreLabel()
        progressBar.frame.size.width = (view.frame.size.width / CGFloat(questions.count)) * CGFloat(progressIndex + 1)
    }
    
    func nextQuestion() {
        progressIndex += 1
        if progressIndex == questions.count {
            showAlertUI()
        }  else {
            updateUI()
        }
    }
    
    func checkAnswer(pickedAnswer: Bool) {
        let expectedAnswer = questions[progressIndex].answer
        if expectedAnswer == pickedAnswer {
            print("Correct answer, progressIndex: \(progressIndex)")
            ProgressHUD.showSuccess("Correct")
            score += 10
        } else {
            print("Wrong answer, progressIndex: \(progressIndex)")
            ProgressHUD.showError("Wrong!")
            score -= 10
        }
    }
    
    func startOver() {
        progressIndex = 0
        score = 0
        updateUI()
    }
    
    func showAlertUI() {
        let alert = UIAlertController(
            title: "Awesome",
            message: "U have completed all the questions, wanna start again?",
            preferredStyle: .alert
        )
        
        let action = UIAlertAction(
            title: "Restart",
            style: .default,
            handler: { (UIAlertAction) in
                self.startOver()
            }
        )
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    func updateCompletionLabel() {
        let current = progressIndex + 1
        let total = questions.count
        progressLabel.text = "\(current)/\(total)"
    }
    
    func updateScoreLabel() {
        scoreLabel.text = "Score: \(score)"
    }
}
