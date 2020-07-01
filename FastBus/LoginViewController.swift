//
//  MenuViewController.swift
//  FastBus
//
//  Created by Jonorsky Navarrete on 7/1/20.
//  Copyright © 2020 Nitrogen. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func didClickSignIn(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToMenu", sender: self)
    }
}
