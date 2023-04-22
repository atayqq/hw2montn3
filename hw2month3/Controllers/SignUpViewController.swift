//
//  SignUpViewController.swift
//  hw2month3
//
//  Created by atay on 18/4/23.
//

import UIKit

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var fullNameTF: UITextField!
    @IBOutlet weak var mobileNumberTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var confirmPasswordTF: UITextField!
    
    @IBOutlet weak var signUpView: UIView!
    
    override func viewDidLoad() {
        
        signUpView.clipsToBounds = true
        signUpView.layer.cornerRadius = 30
        signUpView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        
        super.viewDidLoad()

    }
    

    @IBAction func signUpAction(_ sender: Any) {
        if fullNameTF.text?.isEmpty ?? true || mobileNumberTF.text?.isEmpty ?? true || emailTF.text?.isEmpty ?? true || usernameTF.text?.isEmpty ?? true || passwordTF.text?.isEmpty ?? true || confirmPasswordTF.text?.isEmpty ?? true{
            
            fullNameTF.layer.borderWidth = 1
            fullNameTF.layer.borderColor = UIColor.red.cgColor
            fullNameTF.placeholder = "Заполните"
            
            mobileNumberTF.layer.borderWidth = 1
            mobileNumberTF.layer.borderColor = UIColor.red.cgColor
            mobileNumberTF.placeholder = "Заполните"
            
            emailTF.layer.borderWidth = 1
            emailTF.layer.borderColor = UIColor.red.cgColor
            emailTF.placeholder = "Заполните"
            
            usernameTF.layer.borderWidth = 1
            usernameTF.layer.borderColor = UIColor.red.cgColor
            usernameTF.placeholder = "Заполните"
            
            passwordTF.layer.borderWidth = 1
            passwordTF.layer.borderColor = UIColor.red.cgColor
            passwordTF.placeholder = "Заполните"
            
            confirmPasswordTF.layer.borderWidth = 1
            confirmPasswordTF.layer.borderColor = UIColor.red.cgColor
            confirmPasswordTF.placeholder = "Заполните"
        }else{
            let vc: SuccessViewController = storyboard?.instantiateViewController(withIdentifier: "SuccessViewController") as! SuccessViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
    
        
    }
    
    @IBAction func signInAction(_ sender: Any) {
        let vc: ViewController = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
