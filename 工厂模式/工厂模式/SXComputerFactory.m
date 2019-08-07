//
//  SXComputerFactory.m
//  工厂模式
//
//  Created by qrh on 2019/7/24.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "SXComputerFactory.h"
#import "SXComputer.h"
@implementation SXComputerFactory

- (id<ComputerProtocol>)getComputer
{
    return [SXComputer new];
}

@end
