//
//  GaodeMapView.m
//  地图工厂
//
//  Created by qrh on 2019/7/24.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "GaodeMapView.h"
#import <MAMapKit/MAMapKit.h>
#import <AMapFoundationKit/AMapFoundationKit.h>

@interface GaodeMapView ()
@property (nonatomic, strong) MAMapView * mapView;

@end

@implementation GaodeMapView

- (instancetype)initWithFrame:(CGRect)frame;
{
    if (self = [super init]) {
        self.mapView = [[MAMapView alloc] initWithFrame:frame];
        self.mapView.userTrackingMode = MAUserTrackingModeFollow;
        self.mapView.zoomLevel = 15;
    }
    return self;
}

- (UIView *)getView
{
    return self.mapView;
}
-(void)setShowUserLocation:(BOOL)isShowUserLocation;
{
    [self.mapView setShowsUserLocation:isShowUserLocation];
}
- (void)addAnnotation:(id<LocationProtocol>)location
{
    __block bool existence = NO;
    [self.mapView.annotations enumerateObjectsUsingBlock:^(MAPointAnnotation*  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        if([obj.title isEqualToString:[location getLocationId]]){
            existence = YES;
        }
    }];
    
    if(!existence){
        //添加大头针
        MAPointAnnotation *PointAnnotation = [[MAPointAnnotation alloc]init];
        PointAnnotation.coordinate = [location getLocation].coordinate;
        PointAnnotation.title = [location getLocationId];
        [self.mapView addAnnotation:PointAnnotation];
        [self.mapView setCenterCoordinate:[location getLocation].coordinate animated:YES];
    }

}
@end
