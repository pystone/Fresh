//
//  RootViewController.h
//  L01
//
//  Created by steven on 4/6/15.
//  Copyright (c) 2015 steven. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UITabBarController
@property (nonatomic, strong) UIView *tabBarView;
- (void)showTabBar:(BOOL)show;

@end
