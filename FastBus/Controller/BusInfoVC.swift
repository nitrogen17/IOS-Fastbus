//
//  BusInfoVC.swift
//  FastBus
//
//  Created by Jonorsky Navarrete on 9/30/20.
//  Copyright © 2020 Nitrogen. All rights reserved.
//

import UIKit

class BusInfoVC: UIViewController {

    @IBOutlet weak var topViewRef: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        /// Add Corner Radius in UIView
        topViewRef.clipsToBounds = true
        topViewRef.layer.cornerRadius = 8
    }

     override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
         setNeedsStatusBarAppearanceUpdate()
     }

    override var preferredStatusBarStyle: UIStatusBarStyle {
         .lightContent
     }

}
