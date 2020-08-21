//
//  FWCircleView.swift
//  FortuneWheel
//
//  Created by Admin on 19.08.2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

@IBDesignable
class FWCircleView: UIView {
    
    //MARK: - Variables
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return self.layer.cornerRadius
        }
        set {
            return self.layer.cornerRadius = newValue
        }
    }

}

extension FWCircleView {
    func rotate() {
        let rotation = CABasicAnimation(keyPath: "transform.rotation.z")
        rotation.fromValue = self.transform
        rotation.toValue = NSNumber(value: Double.pi * 2)
        rotation.duration = 2
        rotation.isCumulative = true
        rotation.repeatCount = 3
        self.transform = transform.rotated(by: CGFloat(Double.pi * 2.25))
        self.layer.add(rotation, forKey: "transform.rotation.z")
    }
}
