//
//  BaiduLocation.m
//  地图工厂
//
//  Created by qrh on 2019/7/26.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "BaiduLocation.h"

@interface BaiduLocation ()

@property (nonatomic, strong) BMKLocation * location;
@end

@implementation BaiduLocation
- (instancetype)initWithUserLocation:(BMKLocation *)location;
{
    if (self = [super init]) {
        self.location = location;
    }
    return self;
}

- (CLLocation *)getLocation;
{
    return self.location.location;
}
- (NSString *)getLocationId;
{
    return self.location.locationID;
}
@end
