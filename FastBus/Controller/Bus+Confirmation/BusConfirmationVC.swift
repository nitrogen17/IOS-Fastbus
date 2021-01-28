//
//  BusConfirmationVC.swift
//  FastBus
//
//  Created by Jonorsky Navarrete on 12/3/20.
//  Copyright © 2020 Nitrogen. All rights reserved.
//

import UIKit
import Lottie

class BusConfirmationVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        lottieAnimation()
    }

    @IBAction func performUnwindSegue(_ sender: Any) {
        performSegue(withIdentifier: "unwindSegueToVC1", sender: self)
    }

    func lottieAnimation() {
        let animationView = AnimationView(name: "14554-awesome")

        animationView.frame = CGRect(x: 0, y: 0, width: 340, height: 340)

        animationView.center = self.view.center
        animationView.contentMode = .scaleToFill
        view.addSubview(animationView)
        animationView.play()

    }
}
