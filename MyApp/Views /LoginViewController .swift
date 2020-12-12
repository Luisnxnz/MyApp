//
//  LoginViewController .swift
//  MyApp
//
//  Created by Invitado L on 04/12/20.
//  Copyright © 2020 Invitado L. All rights reserved.
//

import Foundation
import UIKit


class LoginViewController: UIViewController {
   
    @IBOutlet weak var txtFieldPwd: UITextField!
    var showWelcome = false
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboard()
    }
    @IBAction func loginBtn(_ sender: Any) {
        let message = validate()
        
        let alert = UIAlertController (title: nil, message: message, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "Entendido ", style: .default) { (UIAlertAction) in
            if self.showWelcome{
                let screenChange:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let welcome = screenChange.instantiateViewController(identifier: "Welcome")
                self.navigationController? .pushViewController(welcome, animated: true)
            }
        }
        
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
        
    }
    func validate () -> String {
        
       
        guard let txtPwd = txtFieldPwd.text else {
            return ""
        }
       
        if txtPwd.count < 8 {
            return "Su contraseña no contiene los caracteres necesarios "
        }
        if txtPwd.count >= 8{
            showWelcome = true
            return "Bienvenido a DragonBank"
            
        }else {
            showWelcome = false
            return "No has llenado los campos"
        }
        
    }
    }


