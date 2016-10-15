//
//  PasswordInputWindow.h
//  返回程序弹出密码框
//
//  Created by 王奥东 on 16/9/29.
//  Copyright © 2016年 王奥东. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PasswordInputWindow : UIWindow

+(PasswordInputWindow *)sharedInstance;

-(void)show;

@end
