//
//  TicTacToe.swift
//  TicTacToe
//
//  Created by mortuza on 14/9/22.
//

import Foundation
import UIKit

struct TicTacToe{
    var board:[UIButton]
    
    func isFullBoard() -> Bool {
        for b in self.board {
            if b.title(for: .normal)  == nil {
                return false
            }
        }
        return true
    }
    
    
    func checkVictory(_ s:String) -> Bool {
        if checkButton(board[0], s) && checkButton(board[1], s) && checkButton(board[2], s){
            return true
        }
        if checkButton(board[3], s) && checkButton(board[4], s) && checkButton(board[5], s){
            return true
        }
        if checkButton(board[6], s) && checkButton(board[7], s) && checkButton(board[8], s){
            return true
        }
        
        if checkButton(board[0], s) && checkButton(board[3], s) && checkButton(board[6], s){
            return true
        }
        if checkButton(board[1], s) && checkButton(board[4], s) && checkButton(board[7], s){
            return true
        }
        if checkButton(board[2], s) && checkButton(board[5], s) && checkButton(board[8], s){
            return true
        }
        
        if checkButton(board[0], s) && checkButton(board[4], s) && checkButton(board[8], s){
            return true
        }
        if checkButton(board[2], s) && checkButton(board[4], s) && checkButton(board[6], s){
            return true
        }
        
        return false
    }
    
    
    func checkButton(_ button:UIButton,_ s:String) -> Bool {
        return button.title(for: .normal) == s
    }
}


enum Turn {
    case CROSS
    case ZERO
}

