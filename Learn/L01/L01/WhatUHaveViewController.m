//
//  WhatUHaveViewController.m
//  L01
//
//  Created by steven on 4/29/15.
//  Copyright (c) 2015 steven. All rights reserved.
//

#import "WhatUHaveViewController.h"
#import "RootViewController.h"
#import "RemindViewController.h"

@interface WhatUHaveViewController ()

@end

@implementation WhatUHaveViewController
UIButton *backBtn;
UIButton *laterBtn;
UILabel *topLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 90, 320, 300)];
    imageView.image = [UIImage imageNamed:@"shot.png"];
//    imageView.center = self.view.center;
    [self.view addSubview:imageView];
    
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    backBtn.frame = CGRectMake(0, 400, 320, 40);
    backBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [backBtn setTitle:@"DONE!" forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    //    [displaybtn setBackgroundImage:@" " forState:UIControlStateNormal];
    [self.view addSubview:backBtn];
    
    laterBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    laterBtn.frame = CGRectMake(0, 450, 320, 40);
    laterBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [laterBtn setTitle:@"Not at home" forState:UIControlStateNormal];
    [laterBtn addTarget:self action:@selector(laterAction) forControlEvents:UIControlEventTouchUpInside];
    //    [displaybtn setBackgroundImage:@" " forState:UIControlStateNormal];
    [self.view addSubview:laterBtn];
    
    topLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 40, 320, 50)];
    topLabel.text = @"This page for changing the amount of food";
    topLabel.textColor = [UIColor orangeColor];
    topLabel.backgroundColor = [UIColor whiteColor];
    topLabel.font = [UIFont fontWithName:@"TimesNewRomanPSMT" size:18.0];
    topLabel.hidden = NO;
    topLabel.highlighted = YES;
    topLabel.highlightedTextColor = [UIColor blueColor];
    topLabel.lineBreakMode = YES;
    topLabel.numberOfLines = 0;
    topLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:topLabel];
}

-(void)backAction{
    RootViewController *root = [[RootViewController alloc] init];
    [self presentViewController:root animated:YES completion:nil];
}

-(void)laterAction{
    RemindViewController *remind = [[RemindViewController alloc] init];
    [self presentViewController:remind animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
