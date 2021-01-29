//
//  MenuViewController.swift
//  FastBus
//
//  Created by Jonorsky Navarrete on 7/1/20.
//  Copyright © 2020 Nitrogen. All rights reserved.
//

import UIKit
import Foundation

class LoginVC: UIViewController {

    @IBOutlet var viewReference: UIView!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    weak var activeField: UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()

        /// Add Distance from Keyboard to TextField
        usernameTextField.keyboardDistanceFromTextField = 5
        passwordTextField.keyboardDistanceFromTextField = 5
//        setupNotificationCenter()
    }

    @IBAction func didClickSignIn(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToMenu", sender: self)
    }
}
