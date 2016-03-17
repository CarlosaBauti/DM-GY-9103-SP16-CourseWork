//
//  Section.swift
//  multiple_sections
//
//  Created by Carlos Bautista on 3/16/16.
//  Copyright © 2016 cbautista. All rights reserved.
//

import UIKit

struct Section {
    var heading: String
    var items: [String]
    
    init(title: String, objects:[String]){
        heading = title
        items = objects
    }
}

