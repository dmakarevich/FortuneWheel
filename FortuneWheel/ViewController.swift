//
//  ViewController.swift
//  FortuneWheel
//
//  Created by Admin on 14.08.2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    //MARK: - Variables (Outlets)
    
    @IBOutlet weak var circleView: FWCircleView!
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var text45: UILabel!
    @IBOutlet weak var text90: UILabel!
    @IBOutlet weak var text135: UILabel!
    @IBOutlet weak var text180: UILabel!
    @IBOutlet weak var text35: UILabel!
    @IBOutlet weak var text270: UILabel!
    @IBOutlet weak var text225: UILabel!
    
    //MARK: - Life cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.text45.transform = CGAffineTransform(rotationAngle: CGFloat(45 * Double.pi / 180))
        self.text90.transform = CGAffineTransform(rotationAngle: CGFloat(90 * Double.pi / 180))
        self.text135.transform = CGAffineTransform(rotationAngle: CGFloat(135 * Double.pi / 180))
        self.text180.transform = CGAffineTransform(rotationAngle: CGFloat(180 * Double.pi / 180))

        self.text35.transform = CGAffineTransform(rotationAngle: CGFloat(315 * Double.pi / 180))
        self.text270.transform = CGAffineTransform(rotationAngle: CGFloat(270 * Double.pi / 180))
        self.text225.transform = CGAffineTransform(rotationAngle: CGFloat(225 * Double.pi / 180))
/*
         
*/
    }
    
    //MARK: - Actions
    @IBAction func startRotation(_ sender: Any) {
        
        self.circleView.rotate()
    }
}


