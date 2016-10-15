//
//  ViewController.h
//  返回程序弹出密码框
//
//  Created by 王奥东 on 16/9/29.
//  Copyright © 2016年 王奥东. All rights reserved.
//
//  参考巧哥(唐巧)的返回程序弹出密码框
//  附带详解


/**
 在appDelegate里的applicationDidEnterBackground 方法中调用
 [[PasswordInputWindow sharedInstance] show];
 
 会创建一个window的单列对象，并在show方法里让其成为主window
 因此会在所有图层的上方，而UIWindow继承UIView,可在创建时进行初始化设置
 
 */



#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@end

