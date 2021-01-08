//
//  BusListingViewController.swift
//  FastBus
//
//  Created by Jonorsky Navarrete on 7/10/20.
//  Copyright © 2020 Nitrogen. All rights reserved.
//

import UIKit
import Lottie

class BusListingVC: UIViewController {

    /// Create an array of objects from BusCompany Class [Model]
    private var busCompany = [BusCompany(busName: "Raymond", busPrice: "₱ 1,341", busResult: "12 Buses Available", busLogo: "raymond"),
                              BusCompany(busName: "Bicol Isarog", busPrice: "₱ 2,321", busResult: "1 Bus Available", busLogo: "bicol-isarog"),
                              BusCompany(busName: "DLTB.CO", busPrice: "₱ 500", busResult: "6 Buses Available", busLogo: "dltb"),
                              BusCompany(busName: "Superlines", busPrice: "₱ 890", busResult: "7 Buses Available", busLogo: "superlines"),
                              BusCompany(busName: "Philtranco", busPrice: "₱ 932", busResult: "2 Buses Available", busLogo: "philtranco"),
                              BusCompany(busName: "JAC Liner Inc.", busPrice: "₱ 231", busResult: "6 Buses Available", busLogo: "jac-liner")]

    @IBOutlet var parentView: UIView!
    @IBOutlet weak var topViewRef: UIView!
    @IBOutlet weak var bottomViewRef: UIView!
    @IBOutlet weak var topViewRefUpper: UIView!

    /// Table View Outlets
    /// Left View
    @IBOutlet weak var busName: UILabel!
    @IBOutlet weak var busResult: UILabel!

    /// Right View
    @IBOutlet weak var busTravelPrice: UILabel!

    /// Animation View - from Lottie
    @IBOutlet weak var animatedArrow: UIView!

    @IBOutlet weak var tableViewRef: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        setupVC()
    }

    private func setupView() {
        /// Add Corner Radius in UIView
        self.navigationController?.isNavigationBarHidden = true

        topViewRef.clipsToBounds = true
        topViewRef.layer.cornerRadius = 8

        topViewRefUpper.layer.shadowColor = UIColor.black.cgColor
        topViewRefUpper.layer.shadowOpacity = 0.4
        topViewRefUpper.layer.shadowRadius = 10

        bottomViewRef.clipsToBounds = true
        bottomViewRef.layer.cornerRadius = 8

        lottieAnimation1()
    }

    private func setupVC() {
        tableViewRef.dataSource = self
        tableViewRef.delegate = self

        tableViewRef.register(UINib(nibName: "BusListCell", bundle: nil), forCellReuseIdentifier: "BusListCell")
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

    func lottieAnimation1() {
//        let animationSubView = AnimationView(name: "13171-forward-arrow")
        let animationSubView = AnimationView(name: "6843-map-location")
        animationSubView.frame = self.animatedArrow.bounds

        self.animatedArrow.addSubview(animationSubView)
        self.view.bringSubviewToFront(animationSubView)
        animationSubView.play()
        animationSubView.loopMode = .loop
    }

    @IBAction func clickDemo(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToDemo", sender: self)
    }
}

extension BusListingVC: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return busCompany.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "BusListCell", for: indexPath) as? BusListCell

        cell?.labelCell.text = busCompany[indexPath.row].getterBusName()
        cell?.resultCell.text = busCompany[indexPath.row].getterBusResult()
        cell?.priceCell.text = busCompany[indexPath.row].getterBusPrice()
//        cell?.busLogo.image = UIImage(named: busCompany[indexPath.row].getterBusLogo())

        cell?.cellClosure = {
            print("EXECUTE CLOSURE \(indexPath.row)")
        }

        return cell!
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 98
    }

}
