//
//  MenuViewController.swift
//  FastBus
//
//  Created by Jonorsky Navarrete on 7/3/20.
//  Copyright © 2020 Nitrogen. All rights reserved.
//

import UIKit

class MenuVC: UIViewController {

    /// Reference from IB
    @IBOutlet weak var topViewRef: UIView!
    @IBOutlet weak var topPanel: UIView!
    @IBOutlet weak var bottomViewRef: UIView!

    /// Dropdown Outlets
    @IBOutlet weak var departureTextField: UILabel!
    @IBOutlet weak var arrivalsTextField: UILabel!
    @IBOutlet weak var departureButton: UIButton!
    @IBOutlet weak var arrivalsButton: UIButton!

    /// Form Properties
    private var shadowLayer: CAShapeLayer!
    private var cornerRadius: CGFloat = 25.0
    private var fillColor: UIColor = .blue

    /// PickerView Properties
    private var arrayRoute = ["Naga",
                              "Daet",
                              "Legazpi",
                              "Lagonoy",
                              "Sorsogon",
                              "Manila",
                              "Pasay",
                              "Cubao"]
    
    private var selectedRoute: String? = ""

    private var locationFlag: Int = 0

    private let picker = UIPickerView.init()
    private let toolBar = UIToolbar.init(frame: CGRect.init(x: 0.0, y: UIScreen.main.bounds.size.height - 300, width: UIScreen.main.bounds.size.width, height: 50))

    /// Start of ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }

    private func setupView() {
        self.navigationController?.isNavigationBarHidden = true

        /// Add Corner Radius in UIView
        topViewRef.clipsToBounds = true
        topViewRef.layer.cornerRadius = 8

        topPanel.layer.shadowColor = UIColor.black.cgColor
        topPanel.layer.shadowOpacity = 0.1
        topPanel.layer.shadowRadius = 10

        bottomViewRef.clipsToBounds = true
        bottomViewRef.layer.cornerRadius = 8

        bottomViewRef.layer.shadowColor = UIColor.black.cgColor
        bottomViewRef.layer.shadowOpacity = 0.1
        bottomViewRef.layer.shadowOffset = .zero
        bottomViewRef.layer.shadowRadius = 10
    }

    @IBAction func didClickSearch(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToBusListing", sender: self)
    }

    @IBAction func didClickDepartureButton(_ sender: UIButton) {
        locationFlag = 1

        picker.delegate = self
        picker.frame = CGRect.init(x: 0.0, y: UIScreen.main.bounds.size.height - 300, width: UIScreen.main.bounds.size.width, height: 300)
        picker.backgroundColor = .white

        UIView.transition(with: self.view, duration: 0.25, options: [.transitionCrossDissolve], animations: {
            self.view.addSubview(self.picker)
        }, completion: nil)

        toolBar.items = [UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.dismissPickerView))]
        toolBar.backgroundColor = .white
        self.view.addSubview(toolBar)
    }

    @IBAction func didClickArrivalsButton(_ sender: UIButton) {

        locationFlag = 2

        picker.delegate = self
        picker.frame = CGRect.init(x: 0.0, y: UIScreen.main.bounds.size.height - 300, width: UIScreen.main.bounds.size.width, height: 300)
        picker.backgroundColor = .white

        UIView.transition(with: self.view, duration: 0.25, options: [.transitionCrossDissolve], animations: {
            self.view.addSubview(self.picker)
        }, completion: nil)

        toolBar.items = [UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.dismissPickerView))]
        toolBar.backgroundColor = .white
        self.view.addSubview(toolBar)
    }

    @objc func dismissPickerView() {
        toolBar.removeFromSuperview()
        picker.removeFromSuperview()
    }

}

extension MenuVC: UIPickerViewDataSource, UIPickerViewDelegate {

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayRoute.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayRoute[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedRoute = arrayRoute[row]

        if locationFlag == 1 {
            departureTextField.text = selectedRoute
        } else if locationFlag == 2 {
            arrivalsTextField.text = selectedRoute
        }
    }

}

extension MenuVC {
    @IBAction func unwindToVC1(segue: UIStoryboardSegue) { }
}
