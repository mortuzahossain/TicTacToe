//
//  PlayerSelectionVC.swift
//  TicTacToe
//
//  Created by mortuza on 22/9/22.
//

import Foundation
import UIKit

class PlayerSelectionVC : UIViewController {
    override func viewDidLoad() {
        
    }
    
    @IBAction func clickOnComputer(_ sender: UIButton) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SelectionComputerVC") as? SelectionComputerVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func clickOnFriend(_ sender: UIButton) {
        
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SelectionPlayerVC") as? SelectionPlayerVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}
