//
//  MoreViewController.m
//  L01
//
//  Created by steven on 4/6/15.
//  Copyright (c) 2015 steven. All rights reserved.
//

#import "MoreViewController.h"

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
    UIButton *writebtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
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
