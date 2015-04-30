//
//  PushViewController.m
//  L01
//
//  Created by steven on 4/6/15.
//  Copyright (c) 2015 steven. All rights reserved.
//

#import "PushViewController.h"

@interface PushViewController ()

@end

@implementation PushViewController
UILabel *topLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    UIButton *pushButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    pushButton.frame = CGRectMake(0, 60, 320, 40);
    pushButton.titleLabel.textAlignment = NSTextAlignmentLeft;
    [pushButton setTitle:@"Back" forState:UIControlStateNormal];
    [pushButton addTarget:self action:@selector(popAction) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:pushButton];
    
    UILabel *topLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 180, 320, 50)];
    topLabel.text = @"Add the food in your fridge into the system";
    topLabel.textColor = [UIColor redColor];
    topLabel.backgroundColor = [UIColor whiteColor];
    topLabel.font = [UIFont fontWithName:@"MarkerFelt-Thin" size:14.0];
    topLabel.hidden = NO;
    topLabel.highlighted = YES;
    topLabel.highlightedTextColor = [UIColor blueColor];
    topLabel.lineBreakMode = YES;
    topLabel.numberOfLines = 0;
    topLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:topLabel];
}

- (void)popAction{
    [self.navigationController popViewControllerAnimated:YES];// 3 ways to pop back
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
