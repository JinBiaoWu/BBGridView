//
//  BBButton.m
//  BBGridView
//
//  Created by Biao on 2017/3/12.
//  Copyright © 2017年 Biao. All rights reserved.
//

#import "BBButton.h"

@implementation BBButton

+(BBButton *)LXButtonWithTitle:(NSString *)title titleFont:(UIFont *)titleLabelFont Image:(UIImage *)image backgroundImage:(UIImage *)backgroundImage backgroundColor:(UIColor *)backgroundColor titleColor:(UIColor *)titleLabelColor frame:(CGRect)frame
{
    BBButton *button = [BBButton buttonWithType:UIButtonTypeCustom];
    [button setImage:image forState:UIControlStateNormal];
    [button setBackgroundImage:backgroundImage forState:UIControlStateNormal];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleLabelColor forState:UIControlStateNormal];
    button.backgroundColor = backgroundColor;
    button.frame = frame;
    button.titleLabel.font = titleLabelFont;
    return button;
}
+(BBButton *)LXButtonNoFrameWithTitle:(NSString *)title titleFont:(UIFont *)titleLabelFont Image:(UIImage *)image backgroundImage:(UIImage *)backgroundImage backgroundColor:(UIColor *)backgroundColor titleColor:(UIColor *)titleLabelColor
{
    BBButton *button = [BBButton buttonWithType:UIButtonTypeCustom];
    [button setImage:image forState:UIControlStateNormal];
    [button setBackgroundImage:backgroundImage forState:UIControlStateNormal];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:titleLabelColor forState:UIControlStateNormal];
    button.backgroundColor = backgroundColor;
    button.titleLabel.font = titleLabelFont;
    return button;
}

-(void)addClickBlock:(ButtonBlock)block
{
    _block = block;
    [self addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
}
-(void)buttonAction:(UIButton *)button
{
    _block(button);
}
-(void)setButtonID:(NSInteger)buttonID
{
    _buttonID = buttonID;
    self.tag = buttonID;
}
@end

