//
//  UINavigationBar+Other.m
//  TestProject
//
//  Created by wutos on 2020/12/11.
//  Copyright © 2020年 wutos. All rights reserved.
//

#import "UINavigationBar+Other.h"
#import "UIView+GradualLayer.h"
#define UIColorFromHEX(rgbValue)    [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
@implementation UINavigationBar (Other)

-(void)addNavigationBarGradualLayerWithColors:(NSArray *)colors{

    UIView * barBackgroundView = [[UIView alloc] initWithFrame:CGRectMake(0, -20, [UIScreen mainScreen].bounds.size.width, 64)];
    //调用UIView 类扩展方法
    [barBackgroundView addGradualLayerWithColors:@[(__bridge id)UIColorFromHEX(0x2885FC).CGColor,
                                                   (__bridge id)UIColorFromHEX(0x5055d4).CGColor]];
    UIImage *backImage = [self convertViewToImage:barBackgroundView];
    [self setBackgroundImage:backImage forBarMetrics:UIBarMetricsDefault];
    [self setShadowImage:[[UIImage alloc] init]];
    
    
}
- (UIImage*)convertViewToImage:(UIView*)view{
    CGSize s = view.bounds.size;
    // 下面方法，第一个参数表示区域大小。第二个参数表示是否是非透明的。如果需要显示半透明效果，需要传NO，否则传YES。第三个参数就是屏幕密度了
    UIGraphicsBeginImageContextWithOptions(s, NO, [UIScreen mainScreen].scale);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage*image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}
@end
