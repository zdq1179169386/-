//
//  GoodPhoneShell.swift
//  装饰器模式
//
//  Created by ZDQ on 2019/8/7.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit

class GoodPhoneShell: MobliePhoneShell {
    
    override init(phone: MobliePhone) {
        super.init(phone: phone)
    }

    
    func wearproof()  {
        print("防磨")
    }
    
    func waterproof()  {
        print("防水")
    }
    
    func dustproof()  {
        print("防尘")
    }
}
