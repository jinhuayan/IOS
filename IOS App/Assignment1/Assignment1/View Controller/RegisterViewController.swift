//
//  RegisterViewController.swift
//  Assignment1
//
//  Created by Xcode User on 2019-01-29.
//  Copyright © 2019 Jessica Yan. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var tfName : UITextField!
    @IBOutlet var tfEmail : UITextField!
    
    @IBOutlet var slAge : UISlider!
    @IBOutlet var lbAge : UILabel!
    
    @IBAction func SliderAgeChanged(sender : UISlider){
        updateLabel()
    }
    
    func updateLabel(){
        let age = slAge.value
        let strAge = String(format: "%.0f", age)
        lbAge.text = strAge
    }
    
    @IBAction func ThankYou(sender : UIButton){
        let name = tfName.text
        let email = tfEmail.text
        
        if (name == "" || email == "") {
            
            let alert = UIAlertController(title: "Warning", message: "Please enter your Name and Email.", preferredStyle: .alert)
            
            let noAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alert.addAction(noAction)
            
            present(alert, animated: true)
        }else{
            
            let alert = UIAlertController(title: "Thank you", message: "Hi \(name!)(email: \(email!)). Thank you for your time! ", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "OK", style: .default, handler:  {
                (alert : UIAlertAction!) in
                self.performSegue(withIdentifier: "website", sender: nil)
            })
            
            alert.addAction(okAction)
            
            present(alert, animated: true)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabel()
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
