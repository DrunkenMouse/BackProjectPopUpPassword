//
//  PasswordInputWindow.m
//  返回程序弹出密码框
//
//  Created by 王奥东 on 16/9/29.
//  Copyright © 2016年 王奥东. All rights reserved.
//


/**
  在appDelegate里的applicationDidEnterBackground 方法中调用
  [[PasswordInputWindow sharedInstance] show];
 
  会创建一个window的单列对象，并在show方法里让其成为主window
  因此会在所有图层的上方，而UIWindow继承UIView,可在创建时进行初始化设置
 
 */

#import "PasswordInputWindow.h"

@implementation PasswordInputWindow {
    UITextField *_textField;
}

+(PasswordInputWindow *)sharedInstance{
    
    static id sharedInstace = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstace = [[self alloc] initWithFrame:[UIScreen mainScreen].bounds];
    });
    
    return sharedInstace;
}

-(instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundColor = [UIColor orangeColor];
        
        NSLog(@"这里可设置弹出的内容");
        
        UIButton *testButton = [[UIButton alloc] initWithFrame:CGRectMake(200, 200, 50, 100)];
        [testButton setTitle:@"确定" forState:UIControlStateNormal];
        testButton.backgroundColor = [UIColor purpleColor];
        [testButton addTarget:self action:@selector(clickWindowSureButton) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:testButton];
    }
    return self;
}

-(void)clickWindowSureButton{
    
    [self resignKeyWindow];
    self.hidden = YES;
}

-(void)show{
    //keyWindow是被系统设计用来接收键盘和其它非触摸事件的Window
    [self makeKeyWindow];
    self.hidden = NO;
    
}



@end
