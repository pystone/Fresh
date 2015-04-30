//
//  RemindViewController.m
//  L01
//
//  Created by steven on 4/29/15.
//  Copyright (c) 2015 steven. All rights reserved.
//

#import "RemindViewController.h"
#import "RootViewController.h"
#import "firstViewController.h"

@interface RemindViewController ()

@end

@implementation RemindViewController
UIButton *_leftBtn;
UIButton *_rightBtn;
UILabel *topLabel;
UILabel *descLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Notification";
    self.view.backgroundColor = [UIColor whiteColor];
    

    
    UIButton *_leftBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _leftBtn.frame = CGRectMake(100, 390, 60, 40);
    _leftBtn.userInteractionEnabled = YES;
    
    [_leftBtn setTitle:@"Yes" forState:UIControlStateNormal];
    [_leftBtn addTarget:self action:@selector(_rightBtnOnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_leftBtn];
    
    _rightBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _rightBtn.frame = CGRectMake(160, 390, 60, 40);
    _rightBtn.userInteractionEnabled = YES;

    [_rightBtn setTitle:@"Skip" forState:UIControlStateNormal];
    [_rightBtn addTarget:self action:@selector(_rightBtnOnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_rightBtn];
    
    topLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 180, 320, 50)];
    topLabel.text = @"Reming me to input the volume/weight of food in 3 hours";
    topLabel.textColor = [UIColor orangeColor];
    topLabel.backgroundColor = [UIColor whiteColor];
    topLabel.font = [UIFont fontWithName:@"MarkerFelt-Thin" size:14.0];
    topLabel.hidden = NO;
    topLabel.highlighted = YES;
    topLabel.highlightedTextColor = [UIColor blueColor];
    topLabel.lineBreakMode = YES;
    topLabel.numberOfLines = 2;
    topLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:topLabel];
    
}

-(void)_leftBtnOnClick{
    firstViewController *first = [[firstViewController alloc] init];
    [self presentViewController:first animated:YES completion:nil];
}

-(void)_rightBtnOnClick{
    RootViewController *root = [[RootViewController alloc] init];
    [self presentViewController:root animated:YES completion:nil];
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
