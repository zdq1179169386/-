//
//  ViewController.m
//  组合模式
//
//  Created by qrh on 2019/7/29.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "ViewController.h"
#import "Composite.h"
#import "Leaf.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    id<ComponentProtocol> Companydir = [[Composite alloc]initWithName:@"公司"];
    id<ComponentProtocol> Departmentdir = [[Composite alloc]initWithName:@"部门"];
    id<ComponentProtocol> CEOleaf = [[Leaf alloc]initWithName:@"CEO"];
    id<ComponentProtocol> dir = [[Composite alloc]initWithName:@"nono"];
    [Companydir addChild:Departmentdir];
    [Companydir addChild:CEOleaf];
    [CEOleaf addChild:dir];
}


@end
