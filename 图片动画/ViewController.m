//
//  ViewController.m
//  图片动画
//
//  Created by zhf on 16/7/5.
//  Copyright © 2016年 zhenghongfeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional  setup after loading the view, typically from a nib.
    
    NSArray *images = [NSArray arrayWithObjects:[UIImage imageNamed:@"01.tiff"], [UIImage imageNamed:@"02.tiff"], [UIImage imageNamed:@"03.tiff"], [UIImage imageNamed:@"04.tiff"], nil];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(200, 100, 100, 100)];
    imageView.animationImages = images;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.animationDuration = 0.5;
    imageView.animationRepeatCount = 0;
    [imageView startAnimating];
    [self.view addSubview:imageView];
    
    [UIView animateWithDuration:3 animations:^{
        CGRect frame = imageView.frame;
        frame.origin.x = 0;
        imageView.frame = frame;
    } completion:^(BOOL finished) {
        [imageView removeFromSuperview];
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
