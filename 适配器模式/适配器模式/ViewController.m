//
//  ViewController.m
//  适配器模式
//
//  Created by qrh on 2019/7/24.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /*适配器模式-原理案例？
    基本结构学习明白
    适配器模式分为两种
    第一种：类适配器
    通过案例分析？
    金额转换->1000USA->适配->人民币6500
    适配器：Adapter（适配器）
    目标接口：Target
    被适配者：Adaptee
    
    第二种：对象适配器
    通过案例分析？
    金额转换->1000USA->适配->人民币6500
    适配器：ObjectAdapter（适配器）
    目标接口：Target
    被适配者：Adaptee
    类适配器与对象适配器的区别是：前者是适配器继承被适配者  后者是适配器持有被适配者
     */
}


@end
