//
//  MobliePhoneShell.swift
//  装饰器模式
//
//  Created by ZDQ on 2019/8/7.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit

class MobliePhoneShell:  MobliePhone{
    
    private var phone: MobliePhone
    
    init(phone: MobliePhone) {
        self.phone = phone
    }
    
    func shell() {
        self.phone.shell()
    }
}
