//
//  GaodeLocation.m
//  地图工厂
//
//  Created by qrh on 2019/7/26.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "GaodeLocation.h"

@interface GaodeLocation ()

@property (nonatomic, strong) CLLocation * location;
@property (nonatomic, strong) AMapLocationReGeocode * reGeocode;

@end

@implementation GaodeLocation

- (instancetype)initWithLocation:(CLLocation *)location reGeocode:(AMapLocationReGeocode *)reGeocode;
{
    if (self = [super init]) {
        self.location = location;
        self.reGeocode = reGeocode;
    }
    return self;
}
//位置数据
- (CLLocation *)getLocation;
{
    return self.location;
}
//位置ID
- (NSString *)getLocationId;
{
    return self.reGeocode.formattedAddress;
}

@end
