//
//  ViewController.swift
//  1_Homework_1
//
//  Created by user228564 on 3/1/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myView: UIView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let gradientLayer:CAGradientLayer = CAGradientLayer()
        gradientLayer.cornerRadius = 15
        gradientLayer.frame.size = self.myView.frame.size
        gradientLayer.colors = [UIColor.systemCyan.cgColor,UIColor.red.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        
        myView.translatesAutoresizingMaskIntoConstraints = false

        let horizontalLeftConstraint = myView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100)
        let verticalConstraint = myView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        let widthConstraint = myView.widthAnchor.constraint(equalToConstant: 100)
        let heightConstraint = myView.heightAnchor.constraint(equalToConstant: 100)
        NSLayoutConstraint.activate([horizontalLeftConstraint, verticalConstraint, widthConstraint, heightConstraint])

        myView.layer.cornerRadius = 15
        myView.clipsToBounds = true
        myView.layer.masksToBounds = false
        myView.layer.shadowRadius = 7
        myView.layer.shadowOpacity = 0.6
        myView.layer.shadowOffset = CGSize(width: 0, height: 5)
        myView.layer.shadowColor = UIColor.black.cgColor
        
        myView.layer.addSublayer(gradientLayer)
    }
}

