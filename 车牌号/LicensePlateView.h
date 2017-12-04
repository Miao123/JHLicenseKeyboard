//
//  LicensePlateView.h
//  车牌号键盘
//
//  Created by 苗建浩 on 2017/11/23.
//  Copyright © 2017年 苗建浩. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LicensePlateView : UIView

@property (nonatomic, copy) void(^sendTextBlock)(NSString *);

+ (instancetype)initFrame:(CGRect)frame block:(void(^)(NSString *))block;

@end
