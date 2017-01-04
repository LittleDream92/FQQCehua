//
//  MainViewController.m
//  FQQCeHuaDemo
//
//  Created by Meng Fan on 16/6/2.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

#import "MainViewController.h"
#import "AppDelegate.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"首页";
    self.view.backgroundColor = [UIColor cyanColor];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"侧边栏" style:UIBarButtonItemStylePlain target:self action:@selector(openLeftViewController)];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 侧滑
- (void)openLeftViewController {
    AppDelegate *tempAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    if (tempAppDelegate.leftSlideVC.closed) {
        [tempAppDelegate.leftSlideVC openLeftView];
    }else {
        [tempAppDelegate.leftSlideVC closeLeftView];
    }
}

#pragma mark - view methods
//在页面即将出现的时候开启侧滑，在即将消失的时候关闭侧滑
-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    AppDelegate *tempAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [tempAppDelegate.leftSlideVC setPanEnabled:YES];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    AppDelegate *tempAppDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [tempAppDelegate.leftSlideVC setPanEnabled:NO];
}

@end
