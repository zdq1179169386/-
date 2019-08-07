//
//  ObjectAdapter.h
//  适配器模式
//
//  Created by qrh on 2019/7/24.
//  Copyright © 2019 zdq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Target.h"
#import "Adaptee.h"
NS_ASSUME_NONNULL_BEGIN
// 角色2，对象适配器
//1，实现协议，2，持有被适配者
@interface ObjectAdapter : NSObject<Target>

- (instancetype)initWithAdaptee:(Adaptee *)adaptee;

@end

NS_ASSUME_NONNULL_END
