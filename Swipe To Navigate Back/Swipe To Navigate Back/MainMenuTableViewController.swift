//
//  MainMenuTableViewController.swift
//  Swipe To Navigate Back
//
//  Created by Lukas Zielinski on 04/03/16.
//  Copyright © 2016 Lukas Zielinski. All rights reserved.
//

import UIKit

class MainMenuTableViewController: UITableViewController {
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "WKWebView"
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        performSegueWithIdentifier("showVKWebViewViewController", sender: self)
    }
    
}