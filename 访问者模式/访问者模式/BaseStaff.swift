//
//  BaseStaff.swift
//  访问者模式
//
//  Created by ZDQ on 2019/8/6.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit
//具体元素：根模型
class BaseStaff: StaffProtocol {
    var  name : String
    var  kpi : Float
    
    init(name : String) {
        self.name = name
        self.kpi = Float(arc4random() % 100000)
    }
    
    func accept(_ visitor: VisitorProtocol) {
        
    }
    
}
