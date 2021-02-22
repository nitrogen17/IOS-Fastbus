//
//  ViewController.swift
//  FastBus
//
//  Created by Jonorsky Navarrete on 6/22/20.
//  Copyright © 2020 Nitrogen. All rights reserved.
//

import UIKit

class LaunchVC: UIViewController {

    /// Reference from Interface Builder
    @IBOutlet weak var appTitle: UILabel!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var fastBusImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLaunchAnimation()
    }

    private func setupLaunchAnimation() {
        self.spinner.stopAnimating()
        self.fastBusImage.alpha = 0.0

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            UIView.animate(withDuration: 0.1) {
                self.fastBusImage.alpha = 1.0
            }
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.spinner.startAnimating()
        }

        self.navigationController?.isNavigationBarHidden = true

        /// Manual Animates FlashChat Text using Loop
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {

            self.spinner.stopAnimating()

            /// Delay for 3 seconds
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) { }

            /// Delay for 1 second
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                UIView.animate(withDuration: 0.7, animations: {
                    self.fastBusImage.frame.origin.y += 50
                }, completion: nil )
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
