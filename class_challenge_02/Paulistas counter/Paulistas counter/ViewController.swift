//
//  ViewController.swift
//  Paulistas counter
//
//  Created by Carlos Bautista on 3/22/16.
//  Copyright © 2016 cbautista. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var allCounterList: counters!
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .Value1, reuseIdentifier: "UITableViewCell")
        
        let counter = counters.AllCounters[indexPath.row]
        
        cell.textLabel?.text = counter.name
        cell.detailTextLabel?.text = "\(counter.value)"
        
        return cell
    }

    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> UITableViewCell
        Int {
            return self.allCounterList.allCounters.count
    }
    

}

