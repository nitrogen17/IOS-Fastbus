//
//  MenuViewController.swift
//  FastBus
//
//  Created by Jonorsky Navarrete on 7/1/20.
//  Copyright © 2020 Nitrogen. All rights reserved.
//

import UIKit
import Foundation

class LoginVC: UIViewController {

    @IBOutlet var viewReference: UIView!
    @IBOutlet weak var usernameTextField: UITextField!

//    {
//        didSet { usernameTextField?.addDoneCancelToolbar() }
//    }
    @IBOutlet weak var passwordTextField: UITextField!

//    {
//        didSet { passwordTextField?.addDoneCancelToolbar() }
//    }

    weak var activeField: UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()

        /// Add Distance from Keyboard to TextField
        usernameTextField.keyboardDistanceFromTextField = 10
        passwordTextField.keyboardDistanceFromTextField = 10
//        setupNotificationCenter()
    }

    private func setupNotificationCenter() {
        // Register for Keyboard Notifications, Set this LoginVC Class as Observer
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(sender:)), name: UIResponder.keyboardWillShowNotification, object: nil)

        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(sender:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    @IBAction func didClickSignIn(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToMenu", sender: self)
    }
}

extension LoginVC {
    @objc func keyboardWillShow(sender: NSNotification) {
        self.view.frame.origin.y = -100 // Move view 150 points upward
    }

    @objc func keyboardWillHide(sender: NSNotification) {
        self.view.frame.origin.y = 0 // Move view to original position
    }
}

extension LoginVC {

    func textFieldDidEndEditing(_ textField: UITextField) {
        activeField = nil
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        activeField = textField
    }

}

extension UITextField {
    func addDoneCancelToolbar(onDone: (target: Any, action: Selector)? = nil, onCancel: (target: Any, action: Selector)? = nil) {
        let onCancel = onCancel ?? (target: self, action: #selector(cancelButtonTapped))
        let onDone = onDone ?? (target: self, action: #selector(doneButtonTapped))

        let toolbar: UIToolbar = UIToolbar()
        toolbar.barStyle = .default
        toolbar.items = [
            UIBarButtonItem(title: "Cancel", style: .plain, target: onCancel.target, action: onCancel.action),
            UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil),
            UIBarButtonItem(title: "Done", style: .done, target: onDone.target, action: onDone.action)
        ]
        toolbar.sizeToFit()

        self.inputAccessoryView = toolbar
    }

    // Default actions:
    @objc func doneButtonTapped() { self.resignFirstResponder() }
    @objc func cancelButtonTapped() { self.resignFirstResponder() }

}
