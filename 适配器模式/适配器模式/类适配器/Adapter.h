//
//  Adapter.h
//  适配器模式
//
//  Created by qrh on 2019/7/24.
//  Copyright © 2019 zdq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Target.h"
#import "Adaptee.h"
NS_ASSUME_NONNULL_BEGIN
//角色2，类适配器
//1, 实现接口，2，继承被适配器者
@interface Adapter : Adaptee<Target>

@end

NS_ASSUME_NONNULL_END
