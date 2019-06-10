//
//  ViewController.swift
//  Task5UpdateSession
//
//  Created by Esraa Hassan on 6/10/19.
//  Copyright © 2019 ITI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var updateSessionBtn: UIButton!
    @IBOutlet weak var startDatePicker: UIDatePicker!
    
    @IBOutlet weak var endDatePicker: UIDatePicker!
    
    @IBOutlet weak var sessionTypePicker: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        roundedView(rView: updateSessionBtn)
        roundedView(rView: startDatePicker)
        roundedView(rView: endDatePicker)
        roundedView(rView: sessionTypePicker)
        
        startDatePicker.backgroundColor = UIColor.white
        endDatePicker.backgroundColor = UIColor.white
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

