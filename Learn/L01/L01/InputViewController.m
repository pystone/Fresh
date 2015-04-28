//
//  InputViewController.m
//  L01
//
//  Created by steven on 4/6/15.
//  Copyright (c) 2015 steven. All rights reserved.
//

#import "InputViewController.h"

@interface InputViewController ()

@end

@implementation InputViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *pushButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    pushButton.center = CGPoint
    pushButton.frame = CGRectMake(10, 60, 150, 40);
    [pushButton setTitle:@"Back" forState:UIControlStateNormal];// cannot use "set image"
                                                                  //when used "set title"
    [pushButton addTarget:self action:@selector(dismissAction)
         forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
}

- (void)dismissAction{
    [self dismissViewControllerAnimated:YES completion:nil];
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
