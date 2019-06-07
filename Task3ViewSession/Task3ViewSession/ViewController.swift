//
//  ViewController.swift
//  Task3ViewSession
//
//  Created by Esraa Hassan on 6/7/19.
//  Copyright © 2019 ITI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var detailsView: UIView!
    
    @IBOutlet weak var editBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        roundedView(rView: editBtn)
        roundedView(rView: detailsView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func roundedView (rView : AnyObject){
        rView.layer.cornerRadius = 10
        rView.layer.masksToBounds = true
    }

}

