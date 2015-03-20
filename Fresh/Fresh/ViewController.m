//
//  ViewController.m
//  Fresh
//
//  Created by PY on 2/19/15.
//  Copyright (c) 2015 PY. All rights reserved.
//

#import "ViewController.h"
#import "FVMainFood.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    FVMainFood *foodView = [[FVMainFood alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:foodView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
