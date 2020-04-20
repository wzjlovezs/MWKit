//
//  JNetworkDao.h
//  JKitSample
//
//  Created by MikeWang on 2019/11/5.
//  Copyright © 2019 MikeWang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^callBack)(NSInteger code, NSError*error, id data);

@interface JNetworkDao : NSObject

@property (nonatomic, copy) NSString *baseUrl;

@property (nonatomic, copy) NSString *pathUrl;

@property (nonatomic, copy) NSString *method;

-(void)start:(callBack)callBack;

@end

NS_ASSUME_NONNULL_END
