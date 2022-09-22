//
//  ViewController.swift
//  TicTacToe
//
//  Created by mortuza on 14/9/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var a1: UIButton!
    @IBOutlet weak var a2: UIButton!
    @IBOutlet weak var a3: UIButton!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var c1: UIButton!
    @IBOutlet weak var c2: UIButton!
    @IBOutlet weak var c3: UIButton!
    
    @IBOutlet weak var turnLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var ticTacToe:TicTacToe? = nil
    
    var currentTurn = Turn.CROSS
    
    var cross = "X"
    var zero = "O"
    
    
    var crossLabel = "X"
    var zeroLabel = "O"
    
    var board = [UIButton]()
    
    var winCountX = 0
    var winCountO = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initBoard()
        ticTacToe = TicTacToe(board: board)
        resetBoard()
    }
    
    func initBoard() {
        board.append(a1)
        board.append(a2)
        board.append(a3)
        board.append(b1)
        board.append(b2)
        board.append(b3)
        board.append(c1)
        board.append(c2)
        board.append(c3)
    }
    
    func resetBoard() {
        for b in board {
            b.configuration = .plain()
            b.setTitle(nil, for: .normal)
        }
        turnLabel.text = crossLabel
        currentTurn = Turn.CROSS
    }
    
    @IBAction func handleClick(_ sender: UIButton) {
        addToBoard(sender)
        
        if ticTacToe!.checkVictory(cross){
            winCountX += 1
            scoreLabel.text = "\(crossLabel) win: \(winCountX) \n\(zeroLabel) win: \(winCountO)"
            resultAleart(title: "\(crossLabel) win")
        } else if ticTacToe!.checkVictory(zero) {
            winCountO += 1
            scoreLabel.text = "\(crossLabel) win: \(winCountX) \nO win: \(winCountO)"
            resultAleart(title: "\(zeroLabel) win")
        }
        
        if ticTacToe!.isFullBoard() {
            resultAleart(title: "Tie")
        }
    }
    
    func resultAleart(title:String) {
        let ac = UIAlertController(title: title, message: nil, preferredStyle: .actionSheet)
        ac.addAction(UIAlertAction(title: "Reset", style: .cancel,handler: { UIAlertAction in
            self.resetBoard()
        }))
        self.present(ac, animated: true)
    }
    
    func addToBoard(_ sender:UIButton) {
        if sender.title(for: .normal) == nil {
            if currentTurn == Turn.CROSS{
                sender.setTitle(cross,for: .normal)
                currentTurn = Turn.ZERO
                turnLabel.text = zeroLabel
            }
            else if currentTurn == Turn.ZERO{
                sender.setTitle(zero,for: .normal)
                currentTurn = Turn.CROSS
                turnLabel.text = crossLabel
            }
        }
    }
}

