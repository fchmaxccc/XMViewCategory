//
//  UIView+XMViewCategory.h
//  XMViewCategory
//
//  Created by xuming on 2017/5/31.
//  Copyright © 2017年 NationSky. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (XMViewCategory)


#pragma mark - corner radius

/**
 设置圆角

 @param radius 半径
 */
- (void)xm_setCornerRadius:(NSUInteger)radius;

/**
 设置圆角并修改背景颜色

 @param radius 半径
 @param backgroundColor 背景颜色
 */
- (void)xm_setCornerRadius:(NSUInteger)radius withBackgroundColor:(UIColor * _Nullable)backgroundColor;

/**
 设置圆角、描边颜色，以及宽度

 @param radius 半径
 @param borderColor 描边颜色
 @param borderWidth 描边宽度
 */
- (void)xm_setCornerRadius:(NSUInteger)radius withBorderColor:(UIColor * _Nullable)borderColor borderWidth:(CGFloat)borderWidth;

/**
 圆角、描边颜色、宽度、背景颜色

 @param radius 半径
 @param backgroundColor 背景颜色
 @param borderColor 描边颜色
 @param borderWidth 描边宽度
 */
- (void)xm_setCornerRadius:(NSUInteger)radius withBackgroundColor:(UIColor * _Nullable)backgroundColor borderColor:(UIColor * _Nullable)borderColor borderWidth:(CGFloat)borderWidth;

/**
 圆角

 @param radius 半径
 @param corners 可以一个角做圆角
 */
- (void)xm_setCornerRadius:(NSUInteger)radius byRoundingCorners:(UIRectCorner)corners;




@end
