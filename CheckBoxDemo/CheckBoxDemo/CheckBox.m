//
//  CheckBox.m
//  CheckBoxDemo
//
//  Created by 贺梦洁 on 16/2/3.
//  Copyright © 2016年 贺梦洁. All rights reserved.
//

#import "CheckBox.h"

@implementation CheckBox

@synthesize delegate = _delegate;
@synthesize checked = _checked;
@synthesize userInfo = _userInfo;

- (id)initWithDelegate:(id)delegate{
    self = [super init];
    if (self) {
        _delegate = delegate;
        self.exclusiveTouch = YES;
        [self addTarget:self action:@selector(checkBoxBtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}
- (void)setChecked:(BOOL)checked
{
    if (_checked == checked) {
        return;
    }
    _checked = checked;
    self.selected = checked;
    if (_delegate && [_delegate respondsToSelector:@selector(didSelectedCheckBox:checked:)]) {
        [_delegate didSelectedCheckBox:self checked:self.selected];
    }
}
- (CGRect)imageRectForContentRect:(CGRect)contentRect{
    return CGRectMake(0, (CGRectGetHeight(contentRect) - Q_CHECK_ICON_WH) / 2.0, Q_CHECK_ICON_WH, Q_CHECK_ICON_WH);
}
- (CGRect)titleRectForContentRect:(CGRect)contentRect{
    return CGRectMake(Q_CHECK_ICON_WH + Q_ICON_TITLE_MARGIN, 0, Q_CHECK_ICON_WH * 10, CGRectGetHeight(contentRect));
}
#pragma mark - 按钮点击
- (void)checkBoxBtnClick
{
    self.selected = !self.selected;
    _checked = self.selected;
    if (_delegate && [_delegate respondsToSelector:@selector(didSelectedCheckBox:checked:)]) {
        [_delegate didSelectedCheckBox:self checked:self.selected];
    }
}

@end
