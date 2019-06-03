//
//  ViewController.swift
//  Task1ForgetPassword
//
//  Created by Esraa Hassan on 5/30/19.
//  Copyright © 2019 ITI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var digit1TF: UITextField!
   
    @IBOutlet weak var digit2TF: UITextField!
    
    @IBOutlet weak var digit3TF: UITextField!
    
    @IBOutlet weak var digit4TF: UITextField!
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var resendEmailBtn: UIButton!
    
    @IBOutlet weak var nextBtn: UIButton!
    
    @IBOutlet weak var progressBar: ProgressBar!
    
    var time = 30;
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        roundedView(rView: nextBtn)
        progressBar.setProgressBar(hours: 0, minutes: 0, seconds: time)
        
        digit1TF.addTarget(self, action: #selector(self.textFieldDidChange(textField:)), for: UIControlEvents.editingChanged)
        digit2TF.addTarget(self, action: #selector(self.textFieldDidChange(textField:)), for: UIControlEvents.editingChanged)
        digit3TF.addTarget(self, action: #selector(self.textFieldDidChange(textField:)), for: UIControlEvents.editingChanged)
        digit4TF.addTarget(self, action: #selector(self.textFieldDidChange(textField:)), for: UIControlEvents.editingChanged)
        
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        digit1TF.becomeFirstResponder()
        resetTimer()
        startTimer()
        
    }
    func roundedView (rView : AnyObject){
        rView.layer.cornerRadius = 10
        rView.layer.masksToBounds = true
    }
    @objc func textFieldDidChange(textField: UITextField){
        
        let text = textField.text
        if text?.utf16.count == 1{
            switch textField{
            case digit1TF:
                digit2TF.becomeFirstResponder()
            case digit2TF:
                digit3TF.becomeFirstResponder()
            case digit3TF:
                digit4TF.becomeFirstResponder()
            case digit4TF:
                digit4TF.resignFirstResponder()
            default:
                break
            }
        }
        else{
            
        }
    }
    
    @objc func action() {
        if(time>0){
            time-=1
            timerLabel.text=String(time)
        }
        if (time == 0){
            resendEmailBtn.isEnabled = true
        }
    }
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
        progressBar.start()
    }
    func resetTimer(){
        timer.invalidate()
        progressBar.stop()
        time = 30
        timerLabel.text="30"
        resendEmailBtn.isEnabled = false
    }

    @IBAction func resendEmail(_ sender: UIButton) {
        resetTimer()
        startTimer()
       
    }
}

