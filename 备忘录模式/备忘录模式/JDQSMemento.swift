//
//  JDQSMemento.swift
//  备忘录模式
//
//  Created by qrh on 2019/7/30.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit
//备忘录角色
class JDQSMemento: NSObject {
    
     var point : Int
     var level : Int
    
    init(point : Int,level : Int) {
        self.point = point
        self.level = level
    }
}
