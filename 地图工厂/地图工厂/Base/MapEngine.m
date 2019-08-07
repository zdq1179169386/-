//
//  MapEngine.m
//  地图工厂
//
//  Created by qrh on 2019/7/24.
//  Copyright © 2019 zdq. All rights reserved.
//

#import "MapEngine.h"
#import "PlatformXmlParser.h"
#import "Platform.h"
#import "MapViewFactoryProtocol.h"
@interface MapEngine ()
@property (nonatomic, strong) NSMutableArray * array;

@end

@implementation MapEngine
//单例模式
static MapEngine* instance = nil;

+(instancetype)sharedInstance{
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        instance = [[MapEngine alloc] init];
    });
    return instance;
}

-(id<MapViewFactoryProtocol>)getFactory;
{
    PlatformXmlParser* xmlParser = [[PlatformXmlParser alloc] init];
    _array = [xmlParser parser];
    for (Platform* platform in _array) {
        if([platform.isOpen isEqualToString:@"YES"]){
           return [[NSClassFromString(platform.factoryName) alloc] initWithAppKey:platform.appKey];
        }
    }
    return nil;
}
@end
