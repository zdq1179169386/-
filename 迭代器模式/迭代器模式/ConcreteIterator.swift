//
//  ConcreteIterator.swift
//  迭代器模式
//
//  Created by qrh on 2019/7/27.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit
//具体迭代器
class ConcreteIterator<T>: AnyIterator<T> {
  
    override func next() -> T? {
        if self.hasNext() {
            let result = self.array[index]
            index += 1
            return result
        }
        return nil
    }
    
    override func hasNext() -> Bool {
        return index != self.array.count
    }
}
