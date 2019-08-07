//
//  CEOVisitor.swift
//  访问者模式
//
//  Created by ZDQ on 2019/8/6.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit
//具体访问者：CEO
class CEOVisitor: VisitorProtocol {
    init(name: String) {
        print("CEO =\(name) 访问员工数据")
    }
    //    CTEO 访问普通员工，只看KPI
    func visitr(staff: NormalStaff) {
        print("员工=\(staff.name),kpi = \(staff.kpi)")
    }
    //    CEO 访问项目经理，只看KPI
    func visitr(manager: ManagerStaff) {
        print("项目经理=\(manager.name),kpi = \(manager.kpi)")
    }
    
}
