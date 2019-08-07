//
//  Report.swift
//  访问者模式
//
//  Created by ZDQ on 2019/8/6.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit
//查询系统
class Report: NSObject {
    
    fileprivate var arr = [StaffProtocol]()
    
    override init() {
        self.arr.append(NormalStaff(name: "张三"))
        self.arr.append(NormalStaff(name: "李四"))
        self.arr.append(NormalStaff(name: "王五"))
        self.arr.append(ManagerStaff(name: "马冬梅"))
        self.arr.append(ManagerStaff(name: "郝建"))
        self.arr.append(ManagerStaff(name: "夏洛"))
    }

    func show(visitor: VisitorProtocol){
        self.arr.forEach { (staff) in
            staff.accept(visitor)
        }
    }
}
