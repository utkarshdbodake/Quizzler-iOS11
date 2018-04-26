//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Utkarsh Bodake on 18/04/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

class QuestionBank {
    
    var questions: [Question]
    
    init() {
        questions = [Question]()
        
        // Creating a quiz item and appending it to the questions
        let item = Question(question: "Valentine\'s day is banned in Saudi Arabia.",
                            answer: true)
        // Add the Question to the questions of questions
        questions.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        questions.append(
            Question(question: "A slug\'s blood is green.",
                     answer: true)
        )
        
        questions.append(
            Question(question: "Approximately one quarter of human bones are in the feet.",
                     answer: true)
        )
        
        questions.append(
            Question(question: "The total surface area of two human lungs is approximately 70 square metres.",
                     answer: true)
        )
        
        questions.append(
            Question(question: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.",
                     answer: true)
        )
        
        questions.append(
            Question(question: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.",
                     answer: false)
        )
        
        questions.append(
            Question(question: "It is illegal to pee in the Ocean in Portugal.",
                     answer: true)
        )
        
        questions.append(
            Question(question: "You can lead a cow down stairs but not up stairs.",
                     answer: false)
        )
        
        questions.append(
            Question(question: "Google was originally called \"Backrub\".",
                     answer: true)
        )
        
        questions.append(
            Question(question: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".",
                     answer: true)
        )
        
        questions.append(
            Question(question: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.",
                     answer: false)
        )
        
        questions.append(
            Question(question: "No piece of square dry paper can be folded in half more than 7 times.",
                     answer: false)
        )
        
        questions.append(
            Question(question: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.",
                     answer: true)
        )
    }
}
