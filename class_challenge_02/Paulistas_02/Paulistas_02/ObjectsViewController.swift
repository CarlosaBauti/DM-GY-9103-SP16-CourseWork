//
//  ObjectsViewController.swift
//  Paulistas_02
//
//  Created by Carlos Bautista on 3/29/16.
//  Copyright © 2016 cbautista. All rights reserved.
//

import UIKit

class ObjectsViewController: UIViewController {
    @IBOutlet var name : UILabel!
    var total : Int = 0
    
    @IBOutlet var count: UILabel!
    @IBAction func add(sender: UIButton){
        total += 1
        count.text = "\(total)"
    }
    @IBAction func subtract(sender: UIButton){
        if (total == 0) {return}
        total -= 1
        count.text = "\(total)"
    }

}
