//
//  ShoppingReceive.m
//  购物车命令模式
//
//  Created by qrh on 2019/7/23.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "ShoppingReceive.h"

@interface ShoppingReceive ()
{
    NSInteger _count;
}

@end

@implementation ShoppingReceive


- (void)reduceCount:(NSString *)value;
{
    NSInteger count = value.integerValue;
    if (_count > 0 && count > 0) {
        _count -= count;
    }
}

- (void)addCount:(NSString *)value;
{
    NSInteger count = value.integerValue;
    _count += count;
}

- (void)printCount;
{
    NSLog(@"_count = %@",@(_count));
}
@end
