//
//  CheckBoxViewController.m
//  CheckBoxDemo
//
//  Created by 贺梦洁 on 16/2/3.
//  Copyright © 2016年 贺梦洁. All rights reserved.
//

#import "CheckBoxViewController.h"

@implementation CheckBoxViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self addCheckBoxs];
}
- (void)addCheckBoxs
{
    [self addCheckBoxWithFrame:CGRectMake(20, 20, 100, 40) Image:@"checkbox1_unchecked" selectImage:@"checkbox1_checked" Select:YES TitleColor:[UIColor redColor] TitleFont:13 Title:@"苹果7"];
    [self addCheckBoxWithFrame:CGRectMake(20, 70, 100, 40) Image:@"checkbox1_unchecked" selectImage:@"checkbox1_checked" Select:NO TitleColor:[UIColor darkGrayColor] TitleFont:13 Title:@"苹果6s Plus"];
    [self addCheckBoxWithFrame:CGRectMake(20, 120, 100, 40) Image:@"uncheck_icon.png" selectImage:@"check_icon.png" Select:YES TitleColor:[UIColor redColor] TitleFont:13 Title:@"北京"];
    [self addCheckBoxWithFrame:CGRectMake(20, 170, 100, 40) Image:@"uncheck_icon.png" selectImage:@"check_icon.png" Select:NO TitleColor:[UIColor darkGrayColor] TitleFont:13 Title:@"苹果6s Plus"];
}
- (void)addCheckBoxWithFrame:(CGRect)frame Image:(NSString *)imageName selectImage:(NSString *)selectedImageName Select:(BOOL)selected TitleColor:(UIColor *)color TitleFont:(NSUInteger)font Title:(NSString *)title
{
    CheckBox *check = [[CheckBox alloc] initWithDelegate:self];
    check.frame = frame;
    [check setTitle:title forState:UIControlStateNormal];
    [check setTitleColor:color forState:UIControlStateNormal];
    [check.titleLabel setFont:[UIFont systemFontOfSize:font]];
    [check setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [check setImage:[UIImage imageNamed:selectedImageName] forState:UIControlStateSelected];
    [self.view addSubview:check];
    [check setChecked:selected];
}
@end
