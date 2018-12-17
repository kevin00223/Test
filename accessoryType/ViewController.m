//
//  ViewController.m
//  accessoryType
//
//  Created by 李凯 on 2018/12/7.
//  Copyright © 2018年 李凯. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "LKMineCell.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 1;
    }else if (section == 1) {
        return 3;
    }else{
        return 1;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //去复用队列中找对应标识符的cell (当cell的个数没有多到超出屏幕范围的地步时, 复用队列中不可能有cell)
    LKMineCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mineCell"];
    //复用队列中没有可以被复用的cell时, 则实例化一个带有指定标识符的cell
    if (!cell) {
        cell = [[LKMineCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"mineCell"];
    }
    cell.titleLabelText = @"aaaa";
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        cell.backgroundColor = [UIColor orangeColor];
    }
}


- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        //当通过dequeueReusableCellWithIdentifier:获取cell为空时 系统会自动创建register的cell, 因此不需要手动判空并实例化cell
        [_tableView registerClass:[LKMineCell class] forCellReuseIdentifier:@"mineCell"];
    }
    return _tableView;
}


@end
