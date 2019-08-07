//
//  LocationProtocol.h
//  地图工厂
//
//  Created by qrh on 2019/7/26.
//  Copyright © 2019 zdq. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

//抽象产品： 位置接口，封装高德和百度位置模型，抹平百度和高德位置模型的差异
@protocol LocationProtocol <NSObject>
//位置数据
- (CLLocation *)getLocation;
//位置ID
- (NSString *)getLocationId;
@end
