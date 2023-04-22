//
//  NewPasswordViewController.swift
//  hw2month3
//
//  Created by atay on 20/4/23.
//

import UIKit

class NewPasswordViewController: UIViewController {
    

    @IBOutlet weak var newPasswordTF: UITextField!
    @IBOutlet weak var confirmNewPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    
    @IBAction func newPasswordAction(_ sender: Any) {
        if newPasswordTF.text?.isEmpty ?? true || confirmNewPassword.text?.isEmpty ?? true {
            newPasswordTF.layer.borderWidth = 1
            newPasswordTF.layer.borderColor = UIColor.red.cgColor
            newPasswordTF.placeholder = "Заполните поле"
            confirmNewPassword.layer.borderWidth = 1
            confirmNewPassword.layer.borderColor = UIColor.red.cgColor
            confirmNewPassword.placeholder = "Заполните поле"

        }else {
            let vc: SuccessViewController = storyboard?.instantiateViewController(withIdentifier: "SuccessViewController") as! SuccessViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
    
    }
    
    
}
