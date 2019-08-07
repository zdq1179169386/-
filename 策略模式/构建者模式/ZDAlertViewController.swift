//
//  ZDAlertViewController.swift
//  构建者模式
//
//  Created by qrh on 2019/7/26.
//  Copyright © 2019 zdq. All rights reserved.
//

import Foundation
import UIKit

class ZDAlertViewController: NSObject {
    var params : BuilderParams
    
    init(_ params: BuilderParams) {
        self.params = params
    }
    
    func show()  {
        let alter = UIAlertController(title: self.params.title, message: self.params.message, preferredStyle: UIAlertController.Style.alert)
        if self.params.ok != nil {
            alter.addAction(UIAlertAction(title: self.params.ok, style: UIAlertAction.Style.default, handler: self.params.okAction))
        }
        
        if self.params.cancel != nil {
            alter.addAction(UIAlertAction(title: self.params.cancel, style: UIAlertAction.Style.cancel, handler: self.params.cancelAction))
        }
        
        self.params.context?.present(alter, animated: true, completion: nil)
    }
}
