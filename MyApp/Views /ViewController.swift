//
//  ViewController.swift
//  MyApp
//
//  Created by Invitado L on 01/12/20.
//  Copyright © 2020 Invitado L. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    
 @IBOutlet weak var imageLogo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageLogo.image = UIImage(imageLiteralResourceName: "Logo")
        
        
   }
    @IBAction func signInBtn(_ sender: Any) {
        
        let screenChange: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let signIn = screenChange.instantiateViewController(identifier: "SignIn")
        navigationController? .pushViewController(signIn, animated: true)
    }
    @IBAction func loginBtn(_ sender: Any) {
        
        let screenChange: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let login = screenChange.instantiateViewController(identifier: "Login")
        navigationController? .pushViewController(login, animated: true)
    }
    
    }
    
    
    

    
    




