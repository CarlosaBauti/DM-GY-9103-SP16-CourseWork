//
//  counter.swift
//  Paulistas counter
//
//  Created by Carlos Bautista on 3/22/16.
//  Copyright © 2016 cbautista. All rights reserved.
//

import UIKit

class counter : NSObject{

var name: String
var count: Int
    
    init (Name: String){
        self.name = Name
        self.count = 0
        
        super.init()
    }

}

