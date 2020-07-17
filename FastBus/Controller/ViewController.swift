//
//  ViewController.swift
//  FastBus
//
//  Created by Jonorsky Navarrete on 6/22/20.
//  Copyright © 2020 Nitrogen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// Reference from Interface Builder
    @IBOutlet weak var appTitle: UILabel!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var redirectingLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        loginButton.isHidden = true
        redirectingLabel.isHidden = true

        /// Manual Animates FlashChat Text using Loop
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {

            self.spinner.stopAnimating()

            self.appTitle.text = ""
            var charIndex = 0.0
            let titleText = "FASTBUS APP"
            for letter in titleText {
                Timer.scheduledTimer(withTimeInterval: 0.2 * charIndex, repeats: false) { (_) in
                    self.appTitle.text?.append(letter)
                }
                charIndex += 1
            }

            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.redirectingLabel.isHidden = false
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                self.performSegue(withIdentifier: "goToLogin", sender: self)
            }
        }
    }

    @IBAction func clickButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToLogin", sender: self)
    }

}
