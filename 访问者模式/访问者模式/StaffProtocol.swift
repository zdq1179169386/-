//
//  StaffProtocol.swift
//  访问者模式
//
//  Created by ZDQ on 2019/8/6.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit
//元素接口
protocol StaffProtocol {
//    接受访问者
    func accept(_ visitor: VisitorProtocol)
}
