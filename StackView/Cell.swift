//
//  Cell.swift
//  StackView
//
//  Created by Clinton de Sá Barreto Maciel on 29/06/16.
//  Copyright © 2016 Clinton de Sá Barreto Maciel. All rights reserved.
//

import Foundation
import UIKit

class Cell: UITableViewCell {
    
    @IBOutlet weak var position: UILabel!
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var appName: UILabel!
    @IBOutlet weak var companyName: UILabel!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var obtainBtn: UIButton!
    
    override func awakeFromNib() {
        self.obtainBtn.layer.borderWidth = 2
        self.obtainBtn.layer.cornerRadius = 6
        self.obtainBtn.layer.borderColor = UIColor.init(red: 0, green: 122/255.0, blue: 255/255.0, alpha: 1).CGColor
    }
    
    @IBAction func down(sender: AnyObject) {
        self.obtainBtn.layer.borderColor = UIColor.grayColor().CGColor
    }
    
    @IBAction func Up(sender: AnyObject) {
        self.obtainBtn.layer.borderColor = UIColor(red: 0, green: 122/255.0, blue: 255/255.0, alpha: 1).CGColor
    }
}