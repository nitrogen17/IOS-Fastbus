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
    

    private var shadowLayer: CAShapeLayer!
    private var cornerRadius: CGFloat = 25.0
    private var fillColor: UIColor = .blue // the color applied to the shadowLayer, rather than the view's backgroundColor
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
         /// Add Corner Radius in UIView
         topViewRef.clipsToBounds = true
         topViewRef.layer.cornerRadius = 8
        
        /*
         topViewShadow.layer.shadowColor = UIColor.black.cgColor
         topViewShadow.layer.shadowOpacity = 0.9
         topViewShadow.layer.shadowOffset = .zero
         topViewShadow.layer.shadowRadius = 10
 */
     /*
        topViewRef.layer.shadowColor = UIColor.black.cgColor
        topViewRef.layer.shadowOffset = CGSize(width: 3, height: 3)
        topViewRef.layer.shadowOpacity = 0.7
        topViewRef.layer.shadowRadius = 4.0
 
 */
        
    }
}
