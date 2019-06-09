//
//  ViewController.swift
//  Task2HallView
//
//  Created by Esraa Hassan on 6/3/19.
//  Copyright © 2019 ITI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buldingLabel: UILabel!
    
    @IBOutlet weak var floorLabel: UILabel!
    
    @IBOutlet weak var capacityLabel: UILabel!
    
    @IBOutlet weak var buldingView: UIView!
    
    @IBOutlet weak var floorView: UIView!
    
    @IBOutlet weak var capacityView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //rounded corners
        roundedView(rView: buldingView)
        roundedView(rView: floorView)
        roundedView(rView: capacityView)
        
        
    }
    
    func roundedView (rView : AnyObject){
        rView.layer.cornerRadius = 10
        rView.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

