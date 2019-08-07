//
//  StateProtocol.swift
//  状态模式
//
//  Created by qrh on 2019/7/30.
//  Copyright © 2019 zdq. All rights reserved.
//

import Foundation
//角色1， 抽象状态
protocol StateProtocol {
    func nextChannel()
    func preChannel()
    func turnUp()
    func turnDown()

}
