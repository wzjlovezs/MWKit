//
//  UIApplication+MWKit.h
//  MWKit
//
//  Created by MikeWang on 2017/2/19.
//  Copyright © 2017年 MikeWang. All rights reserved.
//

#import <UIKit/UIKit.h>

/// <#Description#>
@interface UIApplication (JKit)

+(NSDictionary*)infoDictionary;


/**
 App 名称

 @return app名称
 */
+(NSString*)applicationDisplayName;


/**
 
 @return App 版本号
 */
+(NSString*)applicationShortVersion;


/**
 
 
 @return App build版本号
 */
+(NSString*)applicationVersion;

/**


@return App build版本号
*/
+(NSString*)applicationBundleId;
@end
