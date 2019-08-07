//
//  ViewController.m
//  工厂模式
//
//  Created by qrh on 2019/7/24.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "ViewController.h"
#import "SXComputerFactory.h"
#import "HWComputerFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    id<ComputerFactoryProtocol>  factory = [SXComputerFactory new];
    id<ComputerProtocol> computer = [factory getComputer];
    [computer CPU];
    
    
    id<ComputerFactoryProtocol>  factory1 = [HWComputerFactory new];
    id<ComputerProtocol> computer1 = [factory1 getComputer];
    [computer1 CPU];

}


@end
