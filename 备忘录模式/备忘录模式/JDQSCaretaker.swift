//
//  JDQSCaretaker.swift
//  备忘录模式
//
//  Created by qrh on 2019/7/30.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit
//负责存储备忘录
class JDQSCaretaker: NSObject {
    
    private var memo: JDQSMemento?
    
    func write(memo:JDQSMemento)  {
        self.memo = memo
    }
    
    func read() -> JDQSMemento {
        return self.memo!
    }

}
