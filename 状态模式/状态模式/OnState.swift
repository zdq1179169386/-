//
//  OnState.swift
//  状态模式
//
//  Created by qrh on 2019/7/30.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit
//角色2，具体状态
class OnState: StateProtocol {
    func nextChannel() {
        print("上一个频道")
    }
    
    func preChannel() {
        print("下一个频道")
    }
    
    func turnUp() {
        print("调大音量")
    }
    
    func turnDown() {
        print("调低频道")
    }
    

}
