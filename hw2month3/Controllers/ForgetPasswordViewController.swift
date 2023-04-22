//
//  ForgotPasswordViewController.swift
//  hw2month3
//
//  Created by atay on 19/4/23.
//

import UIKit

class ForgetPasswordViewController: UIViewController {

    @IBOutlet weak var idTF: UITextField!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var forgetPassword: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        forgetPassword.clipsToBounds = true
        forgetPassword.layer.cornerRadius = 30
        forgetPassword.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        label.layer.borderWidth = 1
        label.layer.borderColor = UIColor.black.cgColor
       
    }
    

    @IBAction func newPasswordAction(_ sender: Any) {
        if idTF.text?.isEmpty ?? true {
            idTF.layer.borderWidth = 1
            idTF.layer.borderColor = UIColor.red.cgColor
            idTF.placeholder = "заполните поле"
        }else{
            let vc: NewPasswordViewController = storyboard?.instantiateViewController(withIdentifier: "NewPasswordViewController") as! NewPasswordViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    

}
