//
//  AppDelegate.h
//  FQQCeHuaDemo
//
//  Created by Meng Fan on 16/6/2.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LeftSlideViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, strong) UINavigationController *mainNavigationController;
@property (nonatomic, strong) LeftSlideViewController *leftSlideVC;

@end

