//
//  MainTableViewController.swift
//  WatchKit_SimpleTable
//
//  Created by Kerde Severin on 2/5/15.
//  Copyright (c) 2015 Kerde Severin. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    var listOfItems: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return listOfItems.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as UITableViewCell

        cell.textLabel?.text = listOfItems[indexPath.row]
        return cell
    }

}
