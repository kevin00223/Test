//
//  LKMineCell.m
//  accessoryType
//
//  Created by 李凯 on 2018/12/7.
//  Copyright © 2018年 李凯. All rights reserved.
//

#import "LKMineCell.h"
#import "Masonry.h"

@interface LKMineCell ()

@property (nonatomic, strong) UILabel *titleTextLabel;

@end

@implementation LKMineCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self  = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        [self initSubviews];
    }
    return self;
}

- (void)initSubviews {
    [self.contentView addSubview:self.titleTextLabel];
//    [self.titleTextLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerY.equalTo(self);
//        make.left.equalTo(self.contentView).offset(15);
//    }];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self.titleTextLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self);
        make.left.equalTo(self.contentView).offset(15);
    }];
}

- (void)setTitleLabelText:(NSString *)titleLabelText {
    _titleLabelText = titleLabelText;
    self.titleTextLabel.text = _titleLabelText;
}

- (UILabel *)titleTextLabel {
    if (!_titleTextLabel) {
        _titleTextLabel = [[UILabel alloc]init];
        _titleTextLabel.backgroundColor = [UIColor cyanColor];
        [_titleTextLabel sizeToFit];
    }
    return _titleTextLabel;
}

@end
