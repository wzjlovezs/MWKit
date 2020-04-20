//
//  JTestVC.h
//  JKitSample
//
//  Created by MikeWang on 2019/11/4.
//  Copyright © 2019 MikeWang. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^Jblock)(id sender,id _Nullable data);

@interface JTestVC : UITableViewController
-(void)addMenuTitle:(NSString*)title
           subTitle:(NSString* _Nullable)subTitle
           callBack:(Jblock _Nullable)block;
@end

NS_ASSUME_NONNULL_END
