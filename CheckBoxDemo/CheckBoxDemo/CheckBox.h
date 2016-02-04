//
//  CheckBox.h
//  CheckBoxDemo
//
//  Created by 贺梦洁 on 16/2/3.
//  Copyright © 2016年 贺梦洁. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CheckBoxDelegate;

@interface CheckBox : UIButton
/** 代理 */
@property (nonatomic, weak) id<CheckBoxDelegate> delegate;
/** 选中标识 */
@property (nonatomic, assign) BOOL checked;
/** 用户信息 */
@property (strong, nonatomic) id userInfo;

- (id)initWithDelegate:(id)delegate;
@end
@protocol CheckBoxDelegate <NSObject>

@optional
- (void)didSelectedCheckBox:(CheckBox *)checkBox checked:(BOOL)checked;

@end
