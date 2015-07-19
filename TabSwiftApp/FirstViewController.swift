//
//  FirstViewController.swift
//  TabSwiftApp
//
//  Created by Eliasz Sawicki on 19/07/15.
//  Copyright (c) 2015 Eliasz Sawicki. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var itemsTableView: UITableView!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        itemsTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsMgr.items.count

    }


    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style:UITableViewCellStyle.Subtitle , reuseIdentifier: "CellId")

        cell.textLabel!.text = itemsMgr.items[indexPath.row].name
        cell.detailTextLabel!.text = itemsMgr.items[indexPath.row].details
    
        return cell
    }

}

