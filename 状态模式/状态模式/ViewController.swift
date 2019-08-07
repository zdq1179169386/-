//
//  ViewController.swift
//  状态模式
//
//  Created by qrh on 2019/7/30.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let  context = TVContext()
        context.powerOn()
        context.nextChannel()
        context.preChannel()
        context.powerOff()
        context.turnDown()
        
    }


}

