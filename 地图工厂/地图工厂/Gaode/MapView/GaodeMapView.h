//
//  GaodeMapView.h
//  地图工厂
//
//  Created by qrh on 2019/7/24.
//  Copyright © 2019 zdq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MapViewProtocol.h"

NS_ASSUME_NONNULL_BEGIN
//具体产品，高德地图类 ，是高德工厂通过地图接口 MapViewProtocol 生产出来的
@interface GaodeMapView : NSObject<MapViewProtocol>


@end

NS_ASSUME_NONNULL_END
