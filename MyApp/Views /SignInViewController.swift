//
//  SignInViewController.swift
//  MyApp
//
//  Created by Invitado L on 04/12/20.
//  Copyright © 2020 Invitado L. All rights reserved.
//

import Foundation
import UIKit

class SignInViewController:UIViewController {
 
    @IBOutlet weak var pwdTxtField: UITextField!
    @IBOutlet weak var confirmPwd: UITextField!
    
 var showWelcome = false
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboard()
    }
    
    
    @IBAction func registerBtn(_ sender: Any) {
        let message = validate()
        
        let alert = UIAlertController(title: nil , message: message, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "entiendo", style: .default) { (UIAlertAction) in
            if self.showWelcome {
                let screenChange:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                guard let welcome = screenChange.instantiateViewController(identifier: "Welcome") as? WelcomeViewController else {
                    return
                }
                welcome.name1 = ""
                self.navigationController? .pushViewController(welcome, animated: true)
            }
        }
        
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
       
    }
    @IBAction func lblTxtName(_ sender: Any) {
        
        
    }
    
    func validate() -> String {

        guard let  pwdtxt = pwdTxtField.text else {
            return ""
        }
        guard let confirmTxt = confirmPwd.text else {
            return ""
        }
        
        if pwdtxt.count < 8 {
            return "su contraseña no contiene 8 caracteres "
        }
        if  pwdtxt == confirmTxt {
            showWelcome = true
            return " Bienvenido a DragonBank"
        } else {
            showWelcome = false
            return " Su contraseña no coincide "
        }
    }
    deinit {
         NotificationCenter.default.removeObserver(self)
    }
}

extension UIViewController{
   
    func hideKeyboard(){

    let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self , action: #selector(DismissKeyboard))
    
    view.addGestureRecognizer(tap)
    }
    @objc  func DismissKeyboard() {
        
        view.endEditing(true)
    }
}
