//
//  ItemStore.swift
//  Homepwner
//
//  Created by Carlos Bautista on 3/16/16.
//  Copyright © 2016 cbautista. All rights reserved.
//

import UIKit

class ItemStore {
    var allItems = [Item]()
    
    init () {
        for _ in 0..<5{
            createItem()
        }
}
    
func createItem () -> Item {
    let newItem = Item(random: true)
    
    allItems.append(newItem)
    
    return newItem
}

}
