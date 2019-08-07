//
//  ViewController.m
//  购物车命令模式
//
//  Created by qrh on 2019/7/23.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "ViewController.h"
#import "ShoppingReceive.h"
#import "ShoppingInvoke.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    ShoppingReceive * receiver = [ShoppingReceive new];
    ShoppingInvoke * invoke = [[ShoppingInvoke alloc] initReceiver:receiver];
    [invoke addCount:@"10"];
    [receiver printCount];
    [invoke reduceCount:@"5"];
    [receiver printCount];
    [invoke undo];
    [receiver printCount];
    
}


@end
