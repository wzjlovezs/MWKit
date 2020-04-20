//
//  JTestVC.m
//  JKitSample
//
//  Created by MikeWang on 2019/11/4.
//  Copyright © 2019 MikeWang. All rights reserved.
//

#import "JTestVC.h"

@interface JBlockObject:NSObject
@property (nonatomic, strong) id target;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *subtitle;
@property (nonatomic, strong) Jblock callBack;
@end

@implementation JBlockObject
@end

@interface JTestVC ()
@property (nonatomic, strong) NSMutableArray *dataArray;
@end

@implementation JTestVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataArray = [NSMutableArray arrayWithCapacity:0];
}

-(void)addMenuTitle:(NSString*)title subTitle:(NSString*)subTitle callBack:(Jblock)block {
    if (title.length > 0) {
        JBlockObject *blockObject = [JBlockObject new];
        blockObject.title = title;
        blockObject.subtitle = subTitle;
        blockObject.callBack = block;
        [self.dataArray addObject:blockObject];
        [self.tableView reloadData];
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Jid"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"Jid"];
    }
    JBlockObject *blockObject = self.dataArray[indexPath.row];
    cell.textLabel.text = blockObject.title;
    cell.detailTextLabel.text = blockObject.subtitle;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    JBlockObject *blockObject = self.dataArray[indexPath.row];
    if (blockObject && blockObject.callBack) {
        blockObject.callBack(self, nil);
    }
}

@end
