//
//  ItemsViewController.swift
//  Paulistas_02
//
//  Created by Carlos Bautista on 3/22/16.
//  Copyright © 2016 cbautista. All rights reserved.
//

import UIKit

class ItemsViewController: UITableViewController {
    var items = [Objects(Name: "hh"), Objects(Name: "ii"), Objects(Name: "jj")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: nil)
        let item = items[indexPath.row]
        cell.detailTextLabel?.text = "\(item.count)"
        cell.textLabel?.text = items[indexPath.row].name
        return cell
    }

    
    @IBAction func addNewItem (sender: AnyObject){
        let lastRow = tableView.numberOfRowsInSection(0)
        let indexPath = NSIndexPath(forRow: lastRow, inSection: 0)
        let newItem = Objects(Name: "New Item")
        items.append(newItem)
    }
    
    @IBAction func toggleEditingMode (sender: AnyObject){
        if editing {
        sender.setTitle ("Edit", forState: .Normal)
            setEditing (false, animated: true)
        }
        else {
        sender.setTitle("Done", forState: .Normal)
        
        setEditing(true, animated: true)
        
        }
    }
    
        
}
