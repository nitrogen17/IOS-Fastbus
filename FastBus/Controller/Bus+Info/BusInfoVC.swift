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
    @IBOutlet weak var midViewRef: UIView!
    @IBOutlet weak var bottomViewRef: UIView!

    @IBOutlet weak var topPaneView: UIView!
    @IBOutlet weak var backButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }

    private func setupView() {
        topViewRef.clipsToBounds = true
        topViewRef.layer.cornerRadius = 8

        midViewRef.clipsToBounds = true
        midViewRef.layer.cornerRadius = 8

        bottomViewRef.clipsToBounds = true
        bottomViewRef.layer.cornerRadius = 8

        topPaneView.layer.shadowColor = UIColor.black.cgColor
        topPaneView.layer.shadowOpacity = 0.1
        topPaneView.layer.shadowRadius = 10
    }

    override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
         setNeedsStatusBarAppearanceUpdate()
     }

    override var preferredStatusBarStyle: UIStatusBarStyle {
         .lightContent
     }

    @IBAction func clickConfirm(_ sender: UIButton) {
        performSegue(withIdentifier: "goToBusConfirm", sender: self)
    }

    @IBAction func clickBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
