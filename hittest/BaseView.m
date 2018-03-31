//
//  BaseView.m
//  hittest
//
//  Created by mengyun on 2018/3/30.
//  Copyright © 2018年 mengyun. All rights reserved.
//

#import "BaseView.h"

@implementation BaseView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchBegan---%@", [self class]);
    [super touchesBegan:touches withEvent:event];
    for (UIView *subView in self.subviews) {
        NSLog(@"%@ is subview of%@",[subView class], [self class]);
    }
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    NSLog(@"hitTest----%@", [self class]);
    return [super hitTest:point withEvent:event];
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    NSLog(@"pointInside----%@", [self class]);
    return [super pointInside:point withEvent:event];
}

@end
