//
//  BusListingViewController.swift
//  FastBus
//
//  Created by Jonorsky Navarrete on 7/10/20.
//  Copyright © 2020 Nitrogen. All rights reserved.
//

import UIKit

class BusListingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = false

    }

    /// Catch will move to parent view and set navigationBarHidden to true
    override func willMove(toParent parent: UIViewController?) {
        self.navigationController?.isNavigationBarHidden = true
    }

}
