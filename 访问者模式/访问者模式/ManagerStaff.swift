//
//  ManagerStaff.swift
//  访问者模式
//
//  Created by ZDQ on 2019/8/6.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit
//具体元素：项目经理
class ManagerStaff: BaseStaff {
    var productCount : Int
    
    
    override init(name: String) {
        self.productCount = Int(arc4random() % 100)
        super.init(name: name)
    }

    override func accept(_ visitor: VisitorProtocol) {
        visitor.visitr(manager: self)
    }
}
