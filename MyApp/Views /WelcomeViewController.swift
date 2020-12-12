//
//  WelcomeViewController.swift
//  MyApp
//
//  Created by Invitado L on 04/12/20.
//  Copyright © 2020 Invitado L. All rights reserved.
//

import Foundation
import UIKit

class WelcomeViewController: UIViewController{
    @IBOutlet weak var lblName: UILabel!
    
    
    var name1: String?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
  
    @IBAction func continueBtn(_ sender: Any) {
    
    let screenChange:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    let TabBar = screenChange.instantiateViewController(identifier: "TabBar")
        navigationController? .pushViewController(TabBar, animated: true)
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let name = name1 else {
            return
        }
        lblName.text = name
    }
    
}


