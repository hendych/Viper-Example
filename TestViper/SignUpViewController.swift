//
//  SignUpViewController.swift
//  TestViper
//
//  Created by Hendy Christianto on 3/6/17.
//  Copyright © 2017 PT. Kurio. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController, SignUpView {
    var presenter: SignUpModuleInterface?
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    }

    //MARK: - SignUpView
    func showError(message: String) {
        let alert = UIAlertView(title: "Error", message: message, delegate: nil, cancelButtonTitle: "OK")
        alert.show()
    }
    
    //MARK: - Button Actions
    @IBAction func onSignUpButtonClick() {
        if usernameTextField.text == passwordTextField.text {
            showError(message: "Same username and password")
        }
        
//        presenter?.signUpButtonDidClicked(username: usernameTextField.text, password: passwordTextField.text)
    }
}
