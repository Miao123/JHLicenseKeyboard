//
//  Header.h
//  车牌号键盘
//
//  Created by 苗建浩 on 2017/11/23.
//  Copyright © 2017年 苗建浩. All rights reserved.
//

#ifndef Header_h
#define Header_h

//屏幕的宽度
#define screenWidth  [UIScreen mainScreen].bounds.size.width
#define screenHight  [UIScreen mainScreen].bounds.size.height

#define DISTENCEW (([UIScreen mainScreen].bounds.size.width) / 320)
#define DISTENCEH (([UIScreen mainScreen].bounds.size.height) / 568)

#define RGB_COLOR(R, G, B) [UIColor colorWithRed:((R) / 255.0f) green:((G) / 255.0f) blue:((B) / 255.0f) alpha:1.0f]

#endif /* Header_h */
