//
//  BaiduMapView.m
//  地图工厂
//
//  Created by qrh on 2019/7/24.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "BaiduMapView.h"
#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件
#import <BaiduMapAPI_Map/BMKMapComponent.h>//引入地图功能所有的头文件
@interface BaiduMapView ()

@property (nonatomic, strong) BMKMapView * mapView;

@end

@implementation BaiduMapView

- (instancetype)initWithFrame:(CGRect)frame;
{
    if (self = [super init]) {
        self.mapView = [[BMKMapView alloc] init];
        self.mapView.userTrackingMode = BMKUserTrackingModeNone;
        self.mapView.frame = frame;
//        self.mapView.zoomLevel = 15;
    }
    return self;
}

- (UIView *)getView;
{
    return self.mapView;
}
-(void)setShowUserLocation:(BOOL)isShowUserLocation;
{
    [self.mapView setShowsUserLocation:isShowUserLocation];
}
- (void)addAnnotation:(id<LocationProtocol>)location
{
    //添加大头针
    BMKPointAnnotation *PointAnnotation = [[BMKPointAnnotation alloc]init];
    PointAnnotation.coordinate = [location getLocation].coordinate;
    PointAnnotation.title = @"连续定位";
    PointAnnotation.subtitle = [location getLocationId];
    [self.mapView addAnnotation:PointAnnotation];
}
- (void)viewWillAppear
{
    [self.mapView viewWillAppear];
}
- (void)viewWillDisappear
{
    [self.mapView viewWillDisappear];
}
@end
