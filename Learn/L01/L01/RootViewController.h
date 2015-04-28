//
//  RootViewController.h
//  L01
//
//  Created by steven on 4/6/15.
//  Copyright (c) 2015 steven. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import <FBSDKCoreKit/FBSDKCoreKit.h>
//#import <FBSDKLoginKit/FBSDKLoginKit.h>

@interface RootViewController : UITabBarController
@property (nonatomic, strong) UIView *tabBarView;
//@property (weak, nonatomic) IBOutlet FBSDKLoginButton *loginButton;

- (void)showTabBar:(BOOL)show;

@end
