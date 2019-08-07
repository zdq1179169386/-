//
//  AnyIterator.swift
//  迭代器模式
//
//  Created by qrh on 2019/7/27.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit

class AnyIterator<T>: IteratorProtocol {
    typealias ItemType = T
    var index : Int = 0
    var array: Array<T>
    init(array: Array<T>) {
        self.array = array
    }
    
    func next() -> AnyIterator.ItemType? {
        return nil
    }
    func hasNext() -> Bool {
        return false
    }
}
