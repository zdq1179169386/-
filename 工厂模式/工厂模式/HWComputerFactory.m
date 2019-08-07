//
//  HWComputerFactory.m
//  工厂模式
//
//  Created by qrh on 2019/7/24.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "HWComputerFactory.h"
#import "HWComputer.h"
@implementation HWComputerFactory

- (id<ComputerProtocol>)getComputer
{
    return [HWComputer new];
}
@end
