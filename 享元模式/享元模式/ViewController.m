//
//  ViewController.m
//  享元模式
//
//  Created by qrh on 2019/7/29.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "ViewController.h"
#import "TicketFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    享元模式，用于缓存模式
    TicketFactory * factory = [[TicketFactory alloc] init];
    id<TrainTicketProtocol> ticket = [factory ticketFrom:@"杭州" to:@"北京"];
    [ticket showTicketInfo:@"二等座"];
}


@end
