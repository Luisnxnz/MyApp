//
//  MenuViewController.swift
//  MyApp
//
//  Created by Invitado L on 04/12/20.
//  Copyright © 2020 Invitado L. All rights reserved.
//

import Foundation
import UIKit

class MenuViewControlller: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func signOffBtn(_ sender: Any) {
        
     //   navigationController?.popToRootViewController(animated: true)
        navigationController?.popViewController(animated: true)
       /* let screenChange: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let signOff = screenChange.instantiateViewController(identifier: "first")
        navigationController?.pushViewController(signOff, animated: true)*/
    }
}
