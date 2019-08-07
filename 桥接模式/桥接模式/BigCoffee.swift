//
//  BigCoffee.swift
//  桥接模式
//
//  Created by ZDQ on 2019/8/6.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit

class BigCoffee: Coffee {

    override func makeCoffee() {
        print("大杯\(addtives.addtives())咖啡")
    }
}
