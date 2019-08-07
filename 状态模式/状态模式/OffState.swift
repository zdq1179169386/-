//
//  OffState.swift
//  状态模式
//
//  Created by qrh on 2019/7/30.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit
//角色2，具体状态
class OffState: StateProtocol {
    func nextChannel() {
        print("没有开机")
    }
    
    func preChannel() {
        print("没有开机")
    }
    
    func turnUp() {
        print("没有开机")
    }
    
    func turnDown() {
        print("没有开机")
    }
    

}
