//
//  Builder.swift
//  构建者模式
//
//  Created by qrh on 2019/7/26.
//  Copyright © 2019 zdq. All rights reserved.
//

import Foundation
import UIKit

//构建者
class Builder: NSObject {
    var params : BuilderParams
    
    init(_ context: UIViewController?) {
        self.params = BuilderParams(context)
    }
    
    func setTitle(_ title:String?) -> Builder{
        self.params.setTitle(title)
        return self
    }
    
    func setMessage(_ message:String?) -> Builder{
        self.params.setMessage(message)
        return self
    }
    
    func setOk(_ ok:String?) -> Builder{
        self.params.setOk(ok)
        return self
    }
    
    func setCancel(_ cancel:String?) -> Builder{
        self.params.setCancel(cancel)
        return self
    }
    
    func setOkAction(_ okAction: ((UIAlertAction)-> Void)?) -> Builder{
        self.params.setOkAction(okAction)
        return self
    }
    
    func setCancelAction(_ cancelAction: ((UIAlertAction)-> Void)?) -> Builder{
        self.params.setCancelAction(cancelAction)
        return self
    }
    
    func build() -> ZDAlertViewController {
        return ZDAlertViewController(self.params)
    }
}
