//
//  SignUpPresenter.swift
//  TestViper
//
//  Created by Hendy Christianto on 3/6/17.
//  Copyright © 2017 PT. Kurio. All rights reserved.
//

import Foundation


class SignUpPresenter: SignUpModuleInterface, SignUpInteractorOutput {
    unowned let wireframe: SignUpWireframe
    unowned let view: SignUpView
    
    var interactor: SignUpInteractorInput?
    
    var user: [User]?
    
    init(wireframe: SignUpWireframe, view: SignUpView) {
        self.wireframe = wireframe
        self.view = view
    }
    
    //MARK: - Module Interface
    func signUpButtonDidClicked(username: String?, password: String?) {
        interactor?.signUp(withUsername: username, password: password)
        
    }
    
    //MARK: - Output
    func foundError(withMessage message: String) {
        view.showError(message: message)
    }
    
    func foundUser(user: User?) {
        //push data to SignInView
        
        if let usr = user {
            
            NotificationCenter.default.post(name: NSNotification.Name("didSignUp"), object: usr)
            
            wireframe.popSignUpView(user: usr)
        }else {
            
        }
    }
}
