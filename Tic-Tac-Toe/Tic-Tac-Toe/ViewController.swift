//
//  ViewController.swift
//  Tic-Tac-Toe
//
//  Created by Kevin Cottrell on 7/5/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var winLabel: UILabel!
    var count = 1
    var activePlayer = 1
    var gameState = [0,0,0,0,0,0,0,0,0]
    var gameIsActive = true
    let winningCombinations = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
    
    @IBAction func action(_ sender: AnyObject) {
        if (gameState[sender.tag-1] == 0 && gameIsActive == true) {
            gameState[sender.tag-1] = activePlayer
            if (activePlayer == 1) {
                sender.setImage(UIImage(named: "x.jpg"), for: UIControl.State())
                activePlayer = 2
            } else {
                sender.setImage(UIImage(named: "o.jpg"), for: UIControl.State())
                activePlayer = 1
            }
        }
        
        for combination in winningCombinations {
            if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]] {
                    gameIsActive = false
                    if gameState[combination[0]] == 1 {
                        winLabel.text = "X has won!"
                    } else {
                        winLabel.text = "O has won!"
                    }
                    
                    if gameIsActive == true {
                        for i in gameState {
                            count = i * count
                        }
                        if count != 0 {
                            winLabel.text = "It was a draw!"
                        }
                    }
                }
        }
    }
    
    @IBOutlet weak var resetButton: UIButton!
    @IBAction func playAgain(_ sender: Any) {
        gameState = [0,0,0,0,0,0,0,0,0]
        gameIsActive = true
        activePlayer = 1
        winLabel.text = "Tic-Tac-Toe"
        
        for i in 1...9 {
            let btn = view.viewWithTag(i) as! UIButton
            btn.setImage(nil, for: UIControl.State())
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
