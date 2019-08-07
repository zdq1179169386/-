//
//  ViewController.swift
//  桥接模式
//
//  Created by ZDQ on 2019/8/6.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        桥接模式主要是将两个维度的 型号和加冰不加冰，桥接在一起了，
        
//        Coffee 和 CoffeeAddtives 是抽象部分
//        IceAddtives 和  NonIceAddtives ，SmallCoffee ，BigCoffee  是具体实现部分
//        大杯加冰咖啡
        let addtives = IceAddtives()
        let coffee = BigCoffee(addtives: addtives)
        coffee.makeCoffee()
        
//        小杯不加冰咖啡
        let noIce = NonIceAddtives()
        let small = SmallCoffee(addtives: noIce)
        small.makeCoffee()
        
        
    }


}

