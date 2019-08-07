//
//  ViewController.swift
//  迭代器模式
//
//  Created by qrh on 2019/7/27.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let aggregrate = ConcreteAggregrate<Int>()
        aggregrate.add(10)
        aggregrate.add(12)
        aggregrate.add(15)
        
        let iteator = aggregrate.iterator()
        while iteator.hasNext() {
            print("\(String(describing: iteator.next()))")
        }
    }
}

