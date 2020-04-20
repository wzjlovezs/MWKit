//
//  JTestAppVC.m
//  MWKit
//
//  Created by MikeWang on 2020/4/18.
//  Copyright © 2020 MikeWang. All rights reserved.
//

#import "JTestAppVC.h"
#import "UIApplication+JKit.h"


@interface JTestAppVC ()

@end

@implementation JTestAppVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addMenuTitle:@"app名称" subTitle:[UIApplication applicationDisplayName] callBack:nil];
    [self addMenuTitle:@"app version" subTitle:[UIApplication applicationVersion] callBack:nil];
    [self addMenuTitle:@"short Version" subTitle:[UIApplication applicationShortVersion] callBack:nil];
    [self addMenuTitle:@"bundle Id" subTitle:[UIApplication applicationBundleId] callBack:nil];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
