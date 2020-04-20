//
//  UIApplication+MWKit.m
//  MWKit
//
//  Created by MikeWang on 2017/2/19.
//  Copyright © 2017年 MikeWang. All rights reserved.
//

#import "UIApplication+JKit.h"

@implementation UIApplication (JKit)
+(NSDictionary*)infoDictionary
{
    return [[NSBundle mainBundle] infoDictionary];
}

+(NSString*)applicationDisplayName
{
    return [[self infoDictionary] objectForKey:@"CFBundleDisplayName"];
}

+(NSString*)applicationShortVersion
{
    return [[self infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}

+(NSString*)applicationVersion
{
    return [[self infoDictionary] objectForKey:@"CFBundleVersion"];
}

+(NSString*)applicationBundleId {
    return [[self infoDictionary] objectForKey:@"CFBundleIdentifier"];
}
@end
