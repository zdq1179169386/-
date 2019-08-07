//
//  NormalStaff.swift
//  访问者模式
//
//  Created by ZDQ on 2019/8/6.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit
//具体元素：普通员工
class NormalStaff: BaseStaff {
    
    var codeline : Float
    
    override init(name: String) {
        self.codeline = Float(arc4random() % 10000)
        super.init(name: name)
    }

     override func accept(_ visitor: VisitorProtocol) {
        visitor.visitr(staff: self)
    }
}
