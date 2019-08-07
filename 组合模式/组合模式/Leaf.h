//
//  Leaf.h
//  组合模式
//
//  Created by qrh on 2019/7/29.
//  Copyright © 2019 zdq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ComponentProtocol.h"
NS_ASSUME_NONNULL_BEGIN
//叶子节点
@interface Leaf : NSObject<ComponentProtocol>
- (instancetype)initWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
