//
//  Adapter.m
//  适配器模式
//
//  Created by qrh on 2019/7/24.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "Adapter.h"

@implementation Adapter

- (float)getRMB;
{
    return [self getUSA] * 6.5;
}
@end
