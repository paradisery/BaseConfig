//
//  UIView+GradualLayer.m
//  TestProject
//
//  Created by wutos on 2020/12/11.
//  Copyright © 2020年 wutos. All rights reserved.
//

#import "UIView+GradualLayer.h"

#define UIColorFromHEX(rgbValue)    [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@implementation UIView (GradualLayer)



-(void)addGradualLayerWithColors:(NSArray *)colors {
    CAGradientLayer *_gradientLayer = [CAGradientLayer layer];
    
    _gradientLayer.startPoint = CGPointMake(0, 0.5);//第一个颜色开始渐变的位置
    _gradientLayer.endPoint = CGPointMake(1, 0.5);//最后一个颜色结束的位置
    _gradientLayer.frame = self.bounds;//设置渐变图层的大小
    if (colors == nil) {
        //颜色为空时预置的颜色
        _gradientLayer.colors = @[(__bridge id)UIColorFromHEX(0xFF873E).CGColor,
                                  (__bridge id)UIColorFromHEX(0xFF734D).CGColor,
                                  (__bridge id)UIColorFromHEX(0xFF6461).CGColor
                                  ];
    }else {
        _gradientLayer.colors = colors;
    }
    
    [self.layer insertSublayer:_gradientLayer atIndex:0];
}

@end
