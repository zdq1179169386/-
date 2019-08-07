//
//  PhotoImp.swift
//  外观模式
//
//  Created by ZDQ on 2019/8/7.
//  Copyright © 2019 zdq. All rights reserved.
//

import UIKit

class PhotoImp: PhotoProtocol {
    func open()
    {
        print("打开相机")
    }
    
    func takePhoto()
    {
        print("拍照")
    }
    func close()
    {
        print("关闭相机")
    }
}
