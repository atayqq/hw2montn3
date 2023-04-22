//
//  ViewController.swift
//  hw2month3
//
//  Created by atay on 15/4/23.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signInView: UIView!
    
    
    
    @IBAction func checkBoxTapped(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signInView.clipsToBounds = true
        signInView.layer.cornerRadius = 30
        signInView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        
        
        signInButton.layer.cornerRadius = 20
        
    }
    
    @IBAction func signInAction(_ sender: Any) {
        if emailTextField.text?.isEmpty ?? true || passwordTextField.text?.isEmpty ?? true {
            emailTextField.layer.borderWidth = 1
            emailTextField.layer.borderColor = UIColor.red.cgColor
            emailTextField.placeholder = "Заполните поле"
            passwordTextField.layer.borderWidth = 1
            passwordTextField.layer.borderColor = UIColor.red.cgColor
            passwordTextField.placeholder = "Заполните поле"
        }
        else {
            let vc: SuccessViewController = storyboard?.instantiateViewController(withIdentifier: "SuccessViewController") as! SuccessViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        
    }
    
    @IBAction func check(_ sender: Any) {
        
    }
    
    
    @IBAction func signUpButton(_ sender: Any) {
        let vc: SignUpViewController = storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as!  SignUpViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func forgetPasswordButton(_ sender: Any) {
        let vc: ForgetPasswordViewController = storyboard?.instantiateViewController(withIdentifier: "ForgetPasswordViewController") as! ForgetPasswordViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
}

