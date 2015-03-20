//
//  FVMainPage.m
//  Fresh
//
//  Created by PY on 2/19/15.
//  Copyright (c) 2015 PY. All rights reserved.
//

#import "FVMainPage.h"
#import "FVManageFood.h"

@implementation FVMainPage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self._manageFoodBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self._manageFoodBtn setFrame:CGRectMake(100, 100, 50, 50)];
    [self._manageFoodBtn setTitle:@"haha" forState:UIControlStateNormal];
    [self._manageFoodBtn addTarget:self action:@selector(goToManageFoodPage:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self._manageFoodBtn];
}

-(void) goToManageFoodPage:(UIButton *)button {
    NSLog(@"go to manage food page");
    FVManageFood *manageFoodController = [[FVManageFood alloc] init];
    [self.navigationController pushViewController:manageFoodController animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
