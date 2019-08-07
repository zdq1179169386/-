//
//  GaodeMapViewFactory.m
//  地图工厂
//
//  Created by qrh on 2019/7/24.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "GaodeMapViewFactory.h"
#import "GaodeMapView.h"
#import <AMapFoundationKit/AMapFoundationKit.h>
#import <MAMapKit/MAMapKit.h>
#import <AMapFoundationKit/AMapFoundationKit.h>
#import "GaodeMapLocation.h"
@implementation GaodeMapViewFactory
- (instancetype)initWithAppKey:(NSString *)AppKey
{
    self = [super init];
    if (self) {
        [AMapServices sharedServices].apiKey = AppKey;
        [[AMapServices sharedServices] setEnableHTTPS:YES];
    }
    return self;
}

- (id<MapViewProtocol>)getMapViewWithFrame:(CGRect)frame;
{
    return [[GaodeMapView alloc] initWithFrame:frame];
}
//获取定位
- (id<MapLocationProtocol>)getLocationServiceWithMapView:(id<MapViewProtocol>)mapView;
{
    return [[GaodeMapLocation alloc] initWithMapView: mapView];
}

@end
