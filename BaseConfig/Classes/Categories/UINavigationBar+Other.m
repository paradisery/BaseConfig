//
//  UINavigationBar+Other.m
//  TestProject
//
//  Created by wutos on 2020/12/11.
//  Copyright © 2020年 wutos. All rights reserved.
//

#import "UINavigationBar+Other.h"
#import "UIView+GradualLayer.h"

@implementation UINavigationBar (Other)

-(void)setNavigationBarGradualLayerWithColors:(NSArray *)colors{

    UIView * barBackgroundView = [[UIView alloc] initWithFrame:CGRectMake(0, -20, [UIScreen mainScreen].bounds.size.width, 64)];
    //调用UIView 类扩展方法
    [barBackgroundView addGradualLayerWithColors:colors];
    UIImage *backImage = [self convertViewToImage:barBackgroundView];
    [self setBackgroundImage:backImage forBarMetrics:UIBarMetricsDefault];
    //去掉底部黑线
    [self setShadowImage:[[UIImage alloc] init]];
    //方法二：
//    self.clipsToBounds = YES;
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

-(void)setNavigationBarRecovery{
    UIView * v  = [UIView new];
    v.backgroundColor = [UIColor whiteColor];
    UIImage *backImage = [self convertViewToImage:v];
    [self setBackgroundImage:backImage forBarMetrics:UIBarMetricsDefault];
}

@end
