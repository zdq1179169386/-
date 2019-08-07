//
//  ComputerFactoryProtocol.h
//  工厂模式
//
//  Created by qrh on 2019/7/24.
//  Copyright © 2019 zdq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ComputerProtocol.h"
//抽象工厂
@protocol ComputerFactoryProtocol <NSObject>

//生产电脑
- (id<ComputerProtocol>)getComputer;

@end
