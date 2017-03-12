//
//  BBButton.h
//  BBGridView
//
//  Created by Biao on 2017/3/12.
//  Copyright © 2017年 Biao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BBButton : UIButton

typedef void (^ButtonBlock)(UIButton *button);

@property(nonatomic,copy)ButtonBlock block;
@property(nonatomic,assign)NSInteger buttonID;
-(void)addClickBlock:(ButtonBlock)block;

+(BBButton *)LXButtonWithTitle:(NSString *)title  titleFont:(UIFont *)titleLabelFont Image:(UIImage *)image backgroundImage:(UIImage *)backgroundImage backgroundColor:(UIColor *)backgroundColor titleColor:(UIColor *)titleLabelColor frame:(CGRect)frame;

+(BBButton *)LXButtonNoFrameWithTitle:(NSString *)title  titleFont:(UIFont *)titleLabelFont Image:(UIImage *)image backgroundImage:(UIImage *)backgroundImage backgroundColor:(UIColor *)backgroundColor titleColor:(UIColor *)titleLabelColor;
@end
