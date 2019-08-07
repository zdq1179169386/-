//
//  Coffee.swift
//  桥接模式
//
//  Created by ZDQ on 2019/8/6.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit
//抽象部分
class Coffee: NSObject {
    
    var addtives: CoffeeAddtives
    
    init(addtives: CoffeeAddtives) {
        self.addtives = addtives
    }

    func makeCoffee()  {
        
    }
}
