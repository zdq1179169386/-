//
//  GaodeLocation.h
//  地图工厂
//
//  Created by qrh on 2019/7/26.
//  Copyright © 2019 zdq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LocationProtocol.h"
#import <AMapLocationKit/AMapLocationKit.h>
#import <CoreLocation/CoreLocation.h>
NS_ASSUME_NONNULL_BEGIN

@interface GaodeLocation : NSObject<LocationProtocol>
//初始化
- (instancetype)initWithLocation:(CLLocation *)location reGeocode:(AMapLocationReGeocode *)reGeocode;

@end

NS_ASSUME_NONNULL_END
