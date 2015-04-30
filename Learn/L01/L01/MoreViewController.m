//
//  MoreViewController.m
//  L01
//
//  Created by steven on 4/6/15.
//  Copyright (c) 2015 steven. All rights reserved.
//

#import "MoreViewController.h"
#import "firstViewController.h"
#import "PolicyViewController.h"

@interface MoreViewController ()

@end

@implementation MoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"More";
    self.view.backgroundColor = [UIColor whiteColor];
    [self initNavButton];
}

- (void)initNavButton{
    UIButton *displaybtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    displaybtn.frame = CGRectMake(0, 100, 320, 40);
    displaybtn.titleLabel.backgroundColor = [UIColor yellowColor];
    displaybtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [displaybtn setTitle:@"What Would U Like" forState:UIControlStateNormal];
    [displaybtn addTarget:self action:@selector(displayAction) forControlEvents:UIControlEventTouchUpInside];
//    [displaybtn setBackgroundImage:@" " forState:UIControlStateNormal];
    [self.view addSubview:displaybtn];
    
    UIButton *policybtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    policybtn.frame = CGRectMake(0, 200, 320, 40);
    policybtn.titleLabel.backgroundColor = [UIColor yellowColor];
    policybtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [policybtn setTitle:@"Privacy Policy" forState:UIControlStateNormal];
    [policybtn addTarget:self action:@selector(policyAction) forControlEvents:UIControlEventTouchUpInside];
    //    [displaybtn setBackgroundImage:@" " forState:UIControlStateNormal];
    [self.view addSubview:policybtn];
}

-(void)displayAction{
    firstViewController *first = [[firstViewController alloc] init];
    
    [self presentViewController:first animated:YES completion:nil];
}

-(void)policyAction{
    PolicyViewController *policyVC = [[PolicyViewController alloc] init];
    
    [self presentViewController:policyVC animated:YES completion:nil];
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
