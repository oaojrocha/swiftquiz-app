//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by School Picture Dev on 15/05/18.
//  Copyright © 2018 Joao Rocha. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    // MARK: - Outlets
    @IBOutlet weak var lbAnswerd: UILabel!
    @IBOutlet weak var lbCorrect: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var totalCorrectAnswer = 0
    var totalAnswer = 0
    
    // MARK - Functions
    override func viewDidLoad() {
        super.viewDidLoad()

        lbAnswerd.text = "Perguntas respondidas: \(totalAnswer)"
        lbCorrect.text = "Perguntas corretas: \(totalCorrectAnswer)"
        lbWrong.text = "Perguntas erradas: \(totalAnswer - totalCorrectAnswer)"
        
        let score = totalCorrectAnswer*100/totalAnswer
        lbScore.text = "\(score)%"
        
        totalAnswer = 0
        totalCorrectAnswer = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - IBActions
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
