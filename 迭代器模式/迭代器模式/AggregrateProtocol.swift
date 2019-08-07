//
//  AggregrateProtocol.swift
//  迭代器模式
//
//  Created by qrh on 2019/7/27.
//  Copyright © 2019 zdq. All rights reserved.
//

import Foundation
//容器接口
protocol AggregrateProtocol {
    associatedtype DataType
//    添加元素
    func add(_ data: DataType)
//    删除元素
    func remove(_ index:Int) -> DataType
//    迭代器
    func iterator() -> AnyIterator<DataType>
}
