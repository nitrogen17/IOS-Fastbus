//
//  MenuViewController.swift
//  FastBus
//
//  Created by Jonorsky Navarrete on 7/3/20.
//  Copyright © 2020 Nitrogen. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    /// Reference from IB
    @IBOutlet weak var topViewRef: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// Add Corner Radius in UIView
        topViewRef.clipsToBounds = true
        topViewRef.layer.cornerRadius = 8
    }
}
