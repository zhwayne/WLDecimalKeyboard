//
//  WLDecimalKeyboard.h
//  customkeyboard
//
//  Created by Wayne on 16/6/12.
//  Copyright © 2016年 Wayne. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WLDecimalKeyboard : UIView

@property (copy, nonatomic, nullable) void (^done)();       /*< 点击确定执行的回调 */
@property (nonatomic) UIColor *tintColor;                   /*< 主色调（针对确定按钮） */

- (instancetype)initWithTintColor:(UIColor *)tintColor;

@end

NS_ASSUME_NONNULL_END
