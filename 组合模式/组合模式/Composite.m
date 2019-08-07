//
//  Composite.m
//  组合模式
//
//  Created by qrh on 2019/7/29.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "Composite.h"

@implementation Composite
- (instancetype)initWithName:(NSString *)name;
{
    self = [super init];
    if (self) {
        self.name = name;
        self.components = @[].mutableCopy;
    }
    return self;
}

- (void)addChild:(id<ComponentProtocol>)child;
{
    [self.components addObject:child];
}
- (void)removeChild:(id<ComponentProtocol>)child;
{
    [self.components removeObject:child];
}
- (id<ComponentProtocol>)getChild:(NSInteger)index;
{
    return self.components[index];
}
- (void)clear;
{
    [self.components removeAllObjects];
}
- (void)print;
{
    NSLog(@"节点名称:%@",self.name);
}
@synthesize components;


@synthesize name;

@end
