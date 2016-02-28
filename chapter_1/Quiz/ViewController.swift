//
//  ViewController.swift
//  Quiz
//
//  Created by Carlos Bautista on 1/30/16.
//  Copyright © 2016 Carlos Bautista. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var questionLabel:UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String]=["From what is cognac made?","What is the Capital of Colombia?", "What is 7+7"]
    let answers: [String]=["Grapes", "Bogota", "14"]
    var currentQuestionIndex: Int = 0
    
    @IBAction func showNextQuestion(sender: AnyObject){
        ++currentQuestionIndex
        if currentQuestionIndex == questions.count{
            currentQuestionIndex = 0
        }
        let question: String = questions [currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(sender: AnyObject){
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
        }
    }







