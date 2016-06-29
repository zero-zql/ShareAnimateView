//
//  ShareAnimateView.h
//  ShowAnimateView
//
//  Created by zhuqinlu on 16/6/29.
//  Copyright © 2016年 zero. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^ClickShareButtonBlock)(NSInteger tag);

@interface ShareAnimateView : UIView

- (instancetype)initWithFrame:(CGRect)frame ImageArray:(NSArray *)imageArray didShareButtonBlock:(ClickShareButtonBlock)saveBlock;
- (void)show;

@end
