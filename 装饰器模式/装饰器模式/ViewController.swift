//
//  ViewController.swift
//  装饰器模式
//
//  Created by ZDQ on 2019/8/7.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let x = iPhoneX()
        
        let good = GoodPhoneShell(phone: x)
        good.wearproof()
        good.waterproof()
        good.dustproof()

        let power = PowePhoneShell(phone: x)
        power.wearproof()
        
    }


}

