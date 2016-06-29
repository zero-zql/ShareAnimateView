//
//  ViewController.m
//  ShowAnimateView
//
//  Created by zhuqinlu on 16/6/29.
//  Copyright © 2016年 zero. All rights reserved.
//

#import "ViewController.h"
#import "ShareAnimateView.h"

#define SCREENWIDTH  [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *bt  = [UIButton buttonWithType:UIButtonTypeCustom];
    bt.frame = CGRectMake(100, 100, 100, 100);
    [bt setTitle:@"点击分享" forState:UIControlStateNormal];
    bt.backgroundColor = [UIColor redColor];
    [bt addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bt];
    
}
#pragma mark -- Button Action

- (void)btnClick
{
    NSArray *imageArray = @[@"wechat",@"friendquan",@"qq",@"qqzone",@"weibo"];
    ShareAnimateView *shareView = [[ShareAnimateView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) ImageArray:imageArray didShareButtonBlock:^(NSInteger tag) {
        
        NSLog(@"点击的是:%ld",tag);
        
    }];
    
    [shareView show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
