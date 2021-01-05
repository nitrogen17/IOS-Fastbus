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
        let animationView = AnimationView(name: "24315-bus-on-the-road")
        animationView.frame = CGRect(x: 0, y: 0, width: 390, height: 120)
        animationView.center = self.view.center
        animationView.contentMode = .scaleToFill
        view.addSubview(animationView)
        animationView.play()
        animationView.loopMode = .loop

    }
}
