//
//  ViewController.m
//  YJWaveAnimation
//
//  Created by admin on 16/5/7.
//  Copyright © 2016年 天涯海北. All rights reserved.
//

#import "ViewController.h"
#import "YJWaveAnimationInTool.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *coverView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setAnimation1];
    
    [self setAnimation2];
    
}
// 动画效果1
- (void)setAnimation1
{
    [self.coverView addWaveAnimationWithWaveHeight:50 alpha:0.3];
}
// 动画效果2
- (void)setAnimation2
{
    YJWaveAnimationTool *tool = [YJWaveAnimationTool shareWaveAnimationTool];
    tool.inView = self.coverView;
    [tool raiseAnimationWithDuration:1.0 toPersent:0.9 target:nil action:nil completion:nil];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    YJWaveAnimationTool *tool = [YJWaveAnimationTool shareWaveAnimationTool];
    [tool fallAnimationWithDuration:1.0 target:nil action:nil completion:nil];
}

@end
