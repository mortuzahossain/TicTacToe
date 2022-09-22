//
//  SelectionComputerVC.swift
//  TicTacToe
//
//  Created by mortuza on 22/9/22.
//

import Foundation
import UIKit


class SelectionComputerVC: UIViewController{
    @IBOutlet weak var playerName: UITextField!
    
    @IBAction func onPlayClicked(_ sender: Any) {
        if let name = playerName.text {
            if name != "" {
                let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ViewController") as? ViewController
                vc?.zeroLabel = "Computer"
                vc?.crossLabel = name
                self.navigationController?.pushViewController(vc!, animated: true)
            }
        }
    }
}
