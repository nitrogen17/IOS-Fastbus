//
//  ViewController.swift
//  FastBus
//
//  Created by Jonorsky Navarrete on 6/22/20.
//  Copyright © 2020 Nitrogen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        view.backgroundColor = .black
    }

    @IBAction func clickButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToLogin", sender: self)
    }
    
}

