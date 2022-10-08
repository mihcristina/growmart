//
//  LoginViewController.swift
//  growmart
//
//  Created by Michelli Cristina de Paulo Lima on 07/09/22.
//

import UIKit

class LoginViewController: UIViewController {

    var loginView: LoginView?
    
    override func loadView() {
        loginView = LoginView()
        view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

