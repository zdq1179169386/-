//
//  CTOVisitor.swift
//  访问者模式
//
//  Created by ZDQ on 2019/8/6.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit
//具体访问者：CTO
class CTOVisitor: VisitorProtocol {
       
    init(name: String) {
        print("CTO =\(name) 访问员工数据")
    }
//    CTO 访问普通员工，只看代码行数
    func visitr(staff: NormalStaff) {
        print("员工=\(staff.name),代码行数 = \(staff.codeline)")
    }
    //    CTO 访问项目经理，只看项目数量
    func visitr(manager: ManagerStaff) {
        print("项目经理=\(manager.name),产品数量 = \(manager.productCount)")
    }
}
