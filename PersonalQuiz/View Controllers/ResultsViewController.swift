//
//  ResultsViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 26.10.2020.
//

import UIKit

class ResultsViewController: UIViewController {
    
    
    @IBOutlet var resultTitle: UILabel!
    @IBOutlet var resultLable: UILabel!
    
    var answers: [Answer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        finishResult(for: answers)
        
    }
    
    private func finishResult (for answer : [Answer]){
        var dogCount = 0
        var catCount = 0
        var rabbitCount = 0
        var turtleCount = 0
        for answer in answers {
            if answer.type == AnimalType.dog{
                dogCount += 1
            }
            if answer.type == AnimalType.cat{
                catCount += 1
            }
            if answer.type == AnimalType.rabbit{
                rabbitCount += 1
            }
            if answer.type == AnimalType.turtle{
                turtleCount += 1
            }
        }
        if dogCount >= 2 {
            resultTitle.text = "Вы - \(AnimalType.dog.rawValue)!"
            resultLable.text = "\(AnimalType.dog.definition)"
        }
        if catCount >= 2 {
            resultTitle.text = "Вы - \(AnimalType.cat.rawValue)!"
            resultLable.text = "\(AnimalType.cat.definition)"
        }
        if rabbitCount >= 2 {
            resultTitle.text = "Вы - \(AnimalType.rabbit.rawValue)!"
            resultLable.text = "\(AnimalType.rabbit.definition)"
        }
        if turtleCount >= 2 {
            resultTitle.text = "Вы - \(AnimalType.turtle.rawValue)!"
            resultLable.text = "\(AnimalType.turtle.definition)"
        }
    }
}

