//
//  UIView+XMViewCategory.m
//  XMViewCategory
//
//  Created by xuming on 2017/5/31.
//  Copyright © 2017年 NationSky. All rights reserved.
//

#import "UIView+XMViewCategory.h"

@implementation UIView (XMViewCategory)
#pragma mark - corner radius

- (void)xm_setCornerRadius:(NSUInteger)radius {
    [self xm_setCornerRadius:radius withBackgroundColor:self.backgroundColor];
}

- (void)xm_setCornerRadius:(NSUInteger)radius withBackgroundColor:(UIColor *)backgroundColor {
    [self xm_setCornerRadius:radius withBackgroundColor:backgroundColor borderColor:nil borderWidth:0];
}

- (void)xm_setCornerRadius:(NSUInteger)radius withBorderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth {
    [self xm_setCornerRadius:radius withBackgroundColor:nil borderColor:borderColor borderWidth:borderWidth];
}

- (void)xm_setCornerRadius:(NSUInteger)radius withBackgroundColor:(UIColor *)backgroundColor borderColor:(UIColor *)borderColor borderWidth:(CGFloat)borderWidth {
    self.layer.cornerRadius = radius;
    self.layer.backgroundColor = [backgroundColor CGColor];
    self.layer.borderColor = [borderColor CGColor];
    self.layer.borderWidth = borderWidth;
    
    self.layer.masksToBounds = YES;
}

- (void)xm_setCornerRadius:(NSUInteger)radius byRoundingCorners:(UIRectCorner)corners {
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                               byRoundingCorners:corners
                                                     cornerRadii:CGSizeMake(radius, radius)];
    CAShapeLayer *mask = [CAShapeLayer layer];
    mask.frame = self.bounds;
    mask.path = path.CGPath;
    self.layer.mask = mask;
}





@end
