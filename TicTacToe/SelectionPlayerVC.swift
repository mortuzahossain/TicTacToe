//
//  SelectionPlayerVC.swift
//  TicTacToe
//
//  Created by mortuza on 22/9/22.
//

import Foundation
import UIKit
class SelectionPlayerVC:UIViewController{
    @IBOutlet weak var txtPlayer1: UITextField!
    @IBOutlet weak var txtPlayer2: UITextField!
    
    
    @IBAction func clickOnBtnPlay(_ sender: Any) {
        if let name1 = txtPlayer1.text {
            if let name2 = txtPlayer2.text {
                if name1 != "" && name2 != "" {
                    let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ViewController") as? ViewController
                    vc?.zeroLabel = name2
                    vc?.crossLabel = name1
                    vc?.isComputerPlay = false
                    self.navigationController?.pushViewController(vc!, animated: true)
                }
            }
        }
    }
}
