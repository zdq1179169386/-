//
//  VisitorProtocol.swift
//  访问者模式
//
//  Created by ZDQ on 2019/8/6.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit
//角色1，访问者接口
protocol VisitorProtocol {
//    访问员工
    func visitr(staff:NormalStaff)
//    访问管理者
    func visitr(manager:ManagerStaff)
}
