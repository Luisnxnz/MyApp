//
//  ViewController.swift
//  MyApp
//
//  Created by Invitado L on 01/12/20.
//  Copyright © 2020 Invitado L. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var backGorundView: UIView!
    @IBOutlet weak var rColorSlider: UISlider!
    @IBOutlet weak var gColorSlider: UISlider!
    @IBOutlet weak var bColorSlider: UISlider!
    
    @IBAction func buttonPresed(_ sender: Any) {
        
      
    }
    @IBAction func rSliderAction(_ sender: Any) {
        obtainColor()
    }
    @IBAction func gSliderAction(_ sender: Any) {
        obtainColor()
    }
    @IBAction func bSliderAction(_ sender: Any) {
        obtainColor()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func obtainColor () {
        let red : Float = rColorSlider.value
        let green : Float = gColorSlider.value
        let blue : Float = bColorSlider.value
        
        setBackgroundColorFrom(red: red, green: green, blue: blue)
    }
    
    func setBackgroundColorFrom(red: Float, green: Float, blue: Float){
        let cgfRed: CGFloat = CGFloat(red)
        let cgfgreen: CGFloat = CGFloat(green)
        let cgfblue: CGFloat = CGFloat (blue)
        let color: UIColor = UIColor(displayP3Red: cgfRed, green: cgfgreen, blue: cgfblue, alpha: 1)
        
        backGorundView.backgroundColor = color
        
    }
  


}

