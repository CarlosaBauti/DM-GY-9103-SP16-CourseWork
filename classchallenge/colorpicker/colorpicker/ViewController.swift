//
//  ViewController.swift
//  colorpicker
//
//  Created by Carlos Bautista on 2/9/16.
//  Copyright © 2016 team4. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var colorName: UILabel!
    @IBAction func textFieldTemp(textField: UITextField){
//        colorName.text = textField.text
        
    var colorDictionary: [String: [CGFloat]] = [
        "Akshay" : [0,0,0],
        "Paulina" : [0,0.5,0.5],
        "Carlos" : [0,0.929,1]
        ]
        
        if let rgb = colorDictionary[textField.text!]{
        
            view.backgroundColor = UIColor(red:rgb[0], green: rgb[1], blue:rgb[2], alpha: 1.0)
        }
        else
        {
            view.backgroundColor = UIColor.whiteColor()
        }

    }
    
    
}

