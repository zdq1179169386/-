//
//  ObjectAdapter.m
//  适配器模式
//
//  Created by qrh on 2019/7/24.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "ObjectAdapter.h"

@interface ObjectAdapter ()

@property (nonatomic, strong) Adaptee * adaptee;

@end

@implementation ObjectAdapter

- (instancetype)initWithAdaptee:(Adaptee *)adaptee;
{
    if (self = [super init]) {
        self.adaptee = adaptee;
    }
    return self;
}

- (float)getRMB
{
    return [self.adaptee getUSA] * 6.5;
}
@end
