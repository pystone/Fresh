//
//  RootViewController.m
//  L01
//
//  Created by steven on 4/6/15.
//  Copyright (c) 2015 steven. All rights reserved.
//

// Main scene
#import "RootViewController.h"
#import "MyFridgeViewController.h"
#import "MealViewController.h"
#import "CartViewController.h"
#import "MoreViewController.h"

//#import <FBSDKCoreKit/FBSDKCoreKit.h>
//#import <FBSDKLoginKit/FBSDKLoginKit.h>

#define kScreenWidth     [UIScreen mainScreen].bounds.size.width
#define kScreenHeight     [UIScreen mainScreen].bounds.size.height

CGFloat const tabViewHeight =54;
CGFloat const btnWidth =79;
CGFloat const btnHeight=50;
@interface RootViewController ()
@property (nonatomic, strong) UIImageView *selectView;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
//    [self.view addSubview:loginButton];
    // Do any additional setup after loading the view.
//    if ([FBSDKAccessToken currentAccessToken]) {
        // User is logged in, do work such as go to next view controller.
        self.tabBar.hidden = YES;// hide default
        [self initViewController];
        [self initTabBarView];
//    }

}

// initialize viewcontroller of 4 view in the tab
- (void)initViewController{
    MyFridgeViewController *myfridgeVC = [[MyFridgeViewController alloc] init];
    MealViewController *mealVC = [[MealViewController alloc] init];
    CartViewController *cartVC = [[CartViewController alloc] init];
    MoreViewController *moreVC = [[MoreViewController alloc] init];
    
    // use array to store the VC in the tab
    NSArray *vcArray = @[myfridgeVC,mealVC,cartVC,moreVC];
    NSMutableArray *tabArray = [NSMutableArray arrayWithCapacity:vcArray.count];// == arraylist
    
    //init navigationC
    for (int i = 0; i < vcArray.count; i++) {
        UINavigationController *navCtrl = [[UINavigationController alloc] initWithRootViewController:vcArray[i]];// every navigation init with own viewVC
        [tabArray addObject:navCtrl];
    }
    // assign naviC to tabC
    self.viewControllers = tabArray;
}


// set tabbar
- (void)initTabBarView{
    _tabBarView = [[UIView alloc] initWithFrame:CGRectMake(0, kScreenHeight - tabViewHeight,
                                                           kScreenWidth, tabViewHeight)];
//    _tabBarView.backgroundColor = [UIColor grayColor];
    _tabBarView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"backcolor"]];
    [self.view addSubview:_tabBarView];
    
    //create array to load icons
    NSArray *imgArray = @[@"home_tab_icon_fridge",@"home_tab_icon_meal",
                          @"home_tab_icon_cart",@"home_tab_icon_home"];
    NSArray *titleArray = @[@"My Fridge",@"Meal",@"Cart",@"More"];
    for (int i = 0; i < imgArray.count; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setBackgroundImage:[UIImage imageNamed:imgArray[i]]
                       forState:UIControlStateNormal];
        btn.frame = CGRectMake(btnWidth * i, (tabViewHeight - btnHeight)/2 , btnWidth, btnHeight);// set middle
        [btn setTitle:(titleArray[i]) forState:UIControlStateNormal];
        //set size and offset
        [btn.titleLabel setFont:[UIFont boldSystemFontOfSize:11]];
        [btn setTitleEdgeInsets:UIEdgeInsetsMake(0, 5, -40, 0)];
        
        btn.tag = 100 + i;// ios 中100以前的数有特殊用法
        [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
        // 通过选择不同的tag值实现view的切换
        
        [self.tabBarView addSubview:btn];
    }
    
//    _selectView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, btnWidth, btnHeight)];
//    _selectView.image = [UIImage imageNamed:@"home_bottom_tab_arrow"];
//    [_tabBarView addSubview:_selectView];
}

#pragma mark - UIButtonAction
- (void)btnAction:(UIButton *)button{
    // use tag value to judge the index of current view
    self.selectedIndex = button.tag - 100;
//    [UIView animateWithDuration:0.2 animations:^{
//        _selectView.center = button.center;
//    } completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//display tabbar or not
- (void)showTabBar:(BOOL)show{
    CGRect frame = self.tabBarView.frame;
    if (show) {
        frame.origin.x = 0;
    }else{
        frame.origin.x = - kScreenWidth;
    }
    //reassign frame
    [UIView animateWithDuration:0.2 animations:^{
        self.tabBarView.frame = frame;
    } completion:nil];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/




@end
