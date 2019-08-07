//
//  TVContext.swift
//  状态模式
//
//  Created by qrh on 2019/7/30.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit
//角色3，状态管理器
class TVContext: NSObject {
    
    private var state : StateProtocol
    
    override init() {
        self.state = OnState()
        super.init()
    }
    
    func powerOn()  {
        self.state = OnState()
    }

    func powerOff()  {
        self.state = OffState()
    }
    
    func nextChannel() {
        self.state.nextChannel()
    }
    func preChannel() {
        self.state.preChannel()
    }
    func turnUp() {
        self.state.turnUp()
    }
    func turnDown() {
        self.state.turnDown()
    }
}
