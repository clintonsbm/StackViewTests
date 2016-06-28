//
//  ViewController.swift
//  StackView
//
//  Created by Clinton de Sá Barreto Maciel on 28/06/16.
//  Copyright © 2016 Clinton de Sá Barreto Maciel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var essentialsLbl: UILabel!
    @IBOutlet weak var showBtn: UIButton!
    @IBOutlet weak var obtainBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.obtainBtn.layer.borderWidth = 2
        self.obtainBtn.layer.cornerRadius = 6
        self.obtainBtn.layer.borderColor = UIColor.init(red: 0, green: 122/255.0, blue: 255/255.0, alpha: 1).CGColor
        
    
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func click(sender: AnyObject) {
        self.essentialsLbl.hidden = !self.essentialsLbl.hidden
        if self.showBtn.titleLabel == "Show" {
            self.showBtn.setTitle("Hide", forState: UIControlState.Normal)
        }else {
            self.showBtn.setTitle("Show", forState: UIControlState.Normal)
        }
    }
    
    //        self.obtainBtn.layer.borderColor = UIColor.init(red: 0, green: 122/255.0, blue: 255/255.0, alpha: 1).CGColor
    //        self.obtainBtn.layer.borderColor = UIColor.grayColor().CGColor
   
    
    @IBAction func down(sender: AnyObject) {
        self.obtainBtn.layer.borderColor = UIColor.grayColor().CGColor
    }
    
    @IBAction func Up(sender: AnyObject) {
        self.obtainBtn.layer.borderColor = UIColor(red: 0, green: 122/255.0, blue: 255/255.0, alpha: 1).CGColor
    }
    
}

