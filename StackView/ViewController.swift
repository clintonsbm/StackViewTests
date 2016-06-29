//
//  ViewController.swift
//  StackView
//
//  Created by Clinton de Sá Barreto Maciel on 28/06/16.
//  Copyright © 2016 Clinton de Sá Barreto Maciel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var essentialsLbl: UILabel!
    @IBOutlet weak var showBtn: UIButton!
    @IBOutlet weak var obtainBtn: UIButton!
    
    @IBOutlet weak var sectionSelected: UISegmentedControl!
    @IBOutlet weak var sectionName: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    var paidApps:[(name: String, image: String)] = [("Disturbia", "Disturbia")]
    var freeApps:[(name: String, image: String)] = [("Draw In", "Draw_In")]
    var rentableApps:[(name: String, image: String)] = [("Smart Ear", "Smart_Ear")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func sectionChanged(sender: AnyObject) {
        self.sectionName.text = self.sectionSelected.titleForSegmentAtIndex(self.sectionSelected.selectedSegmentIndex)
        
        self.tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch self.sectionSelected.selectedSegmentIndex {
        case 0:
            return paidApps.count
        case 1:
            return freeApps.count
        case 2:
            return rentableApps.count
        default:
            return 0
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: Cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! Cell
        
        
        switch self.sectionSelected.selectedSegmentIndex {
        case 0:
            cell.appName.text = paidApps[indexPath.row].name
            cell.iconImage.image = UIImage(named: paidApps[indexPath.row].image)
            
        case 1:
            cell.appName.text = freeApps[indexPath.row].name
            cell.iconImage.image = UIImage(named: freeApps[indexPath.row].image)
        case 2:
            cell.appName.text = rentableApps[indexPath.row].name
            cell.iconImage.image = UIImage(named: rentableApps[indexPath.row].image)
        default:
            break
        }
        
        cell.iconImage.layer.cornerRadius = 15
        cell.iconImage.clipsToBounds = true
        

        
        return cell
    }
    
}

