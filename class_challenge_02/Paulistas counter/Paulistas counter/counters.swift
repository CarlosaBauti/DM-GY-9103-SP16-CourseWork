//
//  counters.swift
//  Paulistas counter
//
//  Created by Carlos Bautista on 3/22/16.
//  Copyright © 2016 cbautista. All rights reserved.
//

import UIKit

class counters {
    var allCounters = [counter]()
    
    func createCounter() -> counter {
        let newItem = counter(Name: "this")
        
        allCounters.append(newItem)
        
        return newItem
    }
}
