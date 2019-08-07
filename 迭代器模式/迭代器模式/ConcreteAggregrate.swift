//
//  ConcreteAggregrate.swift
//  迭代器模式
//
//  Created by qrh on 2019/7/27.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit
//具体容器
class ConcreteAggregrate<D>: AggregrateProtocol {
    
    typealias DataType = D
    private var array = Array<D>()
    
    func add(_ data: D) {
        self.array.append(data)
    }
    
    func remove(_ index: Int) -> D {
        return self.array.remove(at: index)
    }
    
    func iterator() -> AnyIterator<D> {
        return ConcreteIterator(array: self.array)
    }

}
