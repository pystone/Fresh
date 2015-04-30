//
//  firstViewController.m
//  L01
//
//  Created by steven on 4/28/15.
//  Copyright (c) 2015 steven. All rights reserved.
//

#import "firstViewController.h"
#import "WhatUHaveViewController.h"

@interface firstViewController ()
@property (nonatomic, assign) int index;

@property (nonatomic, strong) NSArray *imageDicts;
@end

@implementation firstViewController
UIImageView *imageView;
UILabel *topLabel;
UILabel *descLabel;
UIButton *_leftBtn;
UIButton *_rightBtn;
UIButton *doneBtn;

//- (void)viewDidLoad {
//    [super viewDidLoad];
//    // Do any additional setup after loading the view.
//    self.title = @"Meal";
//    self.view.backgroundColor = [UIColor whiteColor];
//    
//    imageView = [[UIImageView alloc]initWithFrame:CGRectMake(150, 250, 260, 190)];
//    imageView.image = [UIImage imageNamed:@"1.jpg"];
//    imageView.center = self.view.center;
//    [self.view addSubview:imageView];
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //add title
    self.title = @"Meal";
    self.view.backgroundColor = [UIColor whiteColor];
    //add image of the recepe
    imageView = [[UIImageView alloc]initWithFrame:CGRectMake(150, 250, 260, 190)];
    imageView.image = [UIImage imageNamed:@"1.jpg"];
    imageView.center = self.view.center;
    [self.view addSubview:imageView];
    
    _leftBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _leftBtn.frame = CGRectMake(100, 440, 60, 40);
    _leftBtn.userInteractionEnabled = YES;
    
    UIImage *btnImage1 = [UIImage imageNamed:@"yes.png"];
    [_leftBtn setBackgroundImage:btnImage1 forState:UIControlStateNormal];
    [_leftBtn addTarget:self action:@selector(BtnOnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_leftBtn];
    
    _rightBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _rightBtn.frame = CGRectMake(160, 440, 60, 40);
    _rightBtn.userInteractionEnabled = YES;
    
    UIImage *btnImage4 = [UIImage imageNamed:@"no.png"];
    [_rightBtn setBackgroundImage:btnImage4 forState:UIControlStateNormal];
    [_rightBtn addTarget:self action:@selector(BtnOnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_rightBtn];
    
    doneBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    doneBtn.frame = CGRectMake(140, 480, 40, 40);
    doneBtn.userInteractionEnabled = YES;
    doneBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [doneBtn setTitle:@"Done" forState:UIControlStateNormal];
    [doneBtn addTarget:self action:@selector(doneBtnOnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:doneBtn];
    
    topLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 80, 320, 50)];
    topLabel.text = @"1/5";
    topLabel.textColor = [UIColor orangeColor];
    topLabel.backgroundColor = [UIColor whiteColor];
    topLabel.font = [UIFont fontWithName:@"MarkerFelt-Thin" size:14.0];
    topLabel.hidden = NO;
    topLabel.highlighted = YES;
    topLabel.highlightedTextColor = [UIColor blueColor];
    topLabel.lineBreakMode = YES;
    topLabel.numberOfLines = 0;
    topLabel.textAlignment = NSTextAlignmentCenter;
//    [self.view addSubview:topLabel];
    
    descLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 390, 320, 50)];
    descLabel.text = @"Mapo Tofu";
    descLabel.textColor = [UIColor orangeColor];
    descLabel.backgroundColor = [UIColor clearColor];
    descLabel.font = [UIFont fontWithName:@"MarkerFelt-Thin" size:14.0];
    descLabel.hidden = NO;
    descLabel.highlighted = YES;
    descLabel.highlightedTextColor = [UIColor blueColor];
    descLabel.lineBreakMode = YES;
    descLabel.textAlignment = NSTextAlignmentCenter;
    descLabel.numberOfLines = 0;
    [self.view addSubview:descLabel];
}

- (void)btnClickChange
{
    topLabel.text = [NSString stringWithFormat:@"%d/%d", (self.index + 1), (int)self.imageDicts.count];
    
    
    descLabel.text = self.imageDicts[self.index][@"description"];
    NSString *nameofjpg = [NSString stringWithFormat:@"%d.jpg", self.index +1];
    
    imageView.image = [UIImage imageNamed:nameofjpg];
    //
//    _leftBtn.enabled = (self.index < 1);
//    _rightBtn.enabled = (self.index > 4);
}

-(void)BtnOnClick{
    if (self.index < 4 || self.index >0) {
        self.index ++;
        [self btnClickChange];
    }
    if (self.index == 4) {
        self.index = 0;
        [self btnClickChange];
    }else if (self.index == 0){
        self.index = 4;
        [self btnClickChange];
    }
}

-(void)doneBtnOnClick{
    WhatUHaveViewController *whatyouhaveVC = [[WhatUHaveViewController alloc] init];
    
    [self presentViewController:whatyouhaveVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSArray *)imageDicts
{
    if (!_imageDicts) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"imageDate.plist" ofType:nil];
        _imageDicts = [NSArray arrayWithContentsOfFile:path];
    }
    return _imageDicts;
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
