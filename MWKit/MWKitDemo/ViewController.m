//
//  ViewController.m
//  MWKit
//
//  Created by MikeWang on 2017/2/12.
//  Copyright © 2017年 MikeWang. All rights reserved.
//

#import "ViewController.h"
#import "JTestAppVC.h"
#import "JKitDefine.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    @weakify(self)
    [self addMenuTitle:@"应用相关" subTitle:nil callBack:^(id  _Nonnull sender, id  _Nonnull data) {
        @strongify(self);
        JTestAppVC *vc = [JTestAppVC new];
        [self.navigationController pushViewController:vc animated:YES];
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
