//
//  BusListingViewController.swift
//  FastBus
//
//  Created by Jonorsky Navarrete on 7/10/20.
//  Copyright © 2020 Nitrogen. All rights reserved.
//

import UIKit
import Lottie

class BusListingViewController: UIViewController {

    @IBOutlet var parentView: UIView!
    @IBOutlet weak var topViewRef: UIView!
    @IBOutlet weak var bottomViewRef: UIView!
    @IBOutlet weak var topViewRefUpper: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = true

        /// Add Corner Radius in UIView
        topViewRef.clipsToBounds = true
        topViewRef.layer.cornerRadius = 8

        topViewRefUpper.layer.shadowColor = UIColor.black.cgColor
        topViewRefUpper.layer.shadowOpacity = 0.4
        topViewRefUpper.layer.shadowRadius = 10

        bottomViewRef.clipsToBounds = true
        bottomViewRef.layer.cornerRadius = 8

        //        lottieAnimation()
    }

    /// Catch will move to parent view and set navigationBarHidden to true
    override func willMove(toParent parent: UIViewController?) {
        self.navigationController?.isNavigationBarHidden = true
    }

    func lottieAnimation() {
        let animationView = AnimationView(name: "24315-bus-on-the-road")
        animationView.frame = CGRect(x: 0, y: 100, width: 200, height: 50)
//        animationView.center = self.view.center
//        animationView.contentMode = .scaleToFill
//        view.addSubview(animationView)
        view.addSubview(animationView)
        animationView.play()
        animationView.loopMode = .loop

    }

}
