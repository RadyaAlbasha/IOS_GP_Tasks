//
//  NewPasswordViewController.swift
//  Task1ForgetPassword
//
//  Created by Esraa Hassan on 5/30/19.
//  Copyright © 2019 ITI. All rights reserved.
//

import UIKit

class NewPasswordViewController: UIViewController {

    @IBOutlet weak var newPasswordTF: UITextField!
    
    @IBOutlet weak var confirmTF: UITextField!
    
    
    @IBOutlet weak var resetPasswordBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        roundedView(rView: resetPasswordBtn)
        
        let myColor = UIColor.black
        newPasswordTF.layer.borderColor = myColor.cgColor
        confirmTF.layer.borderColor = myColor.cgColor
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func roundedView (rView : AnyObject){
        rView.layer.cornerRadius = 10
        rView.layer.masksToBounds = true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
