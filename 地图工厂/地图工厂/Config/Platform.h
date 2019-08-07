//
//  Platform.h
//  地图工厂
//
//  Created by qrh on 2019/7/24.
//  Copyright © 2019 zdq. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Platform : NSObject
@property(nonatomic,copy)NSString *mapId;
@property(nonatomic,copy)NSString* isOpen;
@property(nonatomic,copy)NSString *factoryName;
@property(nonatomic,copy)NSString *appKey;
@end

NS_ASSUME_NONNULL_END
