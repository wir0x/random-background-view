//
//  ViewController.swift
//  randomBackgroundView
//
//  Created by Gonzalo Salazar Velasquez on 2/6/16.
//  Copyright © 2016 Gonzalo Salazar Velasquez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Button 
        let button = UIButton()
        button.frame = CGRectMake(150, 150, 100, 100)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        
        self.view.addSubview(button)
        
        button.addTarget(self, action: "randomBackground", forControlEvents: .TouchUpInside)

    }
    
    func randomColor() -> UIColor {
        let randomRed = CGFloat(drand48())
        let randomGreen = CGFloat(drand48())
        let randomBlue = CGFloat(drand48())
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
    
    func randomBackground() {
        self.view.backgroundColor = randomColor()
    }
}

