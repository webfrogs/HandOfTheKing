//
//  ViewController.swift
//  Demo
//
//  Created by Carl on 22/3/2017.
//  Copyright © 2017 nswebfrog. All rights reserved.
//

import UIKit
import HandOfTheKing

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        UILabel()
            .hand.adhere(toSuperView: self.view)
            .hand.layout { (make) in
                make.top.equalTo(self.view).offset(100)
                make.centerX.equalTo(self.view)
                make.width.equalTo(80)
                make.height.equalTo(40)
            }
            .hand.config { (label) in
                label.backgroundColor = UIColor.hand.color(hex: "#f0f0f0")
                label.text = "test"
            }



    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

