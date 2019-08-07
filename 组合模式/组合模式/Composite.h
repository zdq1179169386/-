//
//  Composite.h
//  组合模式
//
//  Created by qrh on 2019/7/29.
//  Copyright © 2019 zdq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ComponentProtocol.h"

NS_ASSUME_NONNULL_BEGIN
//具体子节点
@interface Composite : NSObject<ComponentProtocol>
- (instancetype)initWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
