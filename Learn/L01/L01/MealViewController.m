//
//  MealViewController.m
//  L01
//
//  Created by steven on 4/6/15.
//  Copyright (c) 2015 steven. All rights reserved.
//

#import "MealViewController.h"

@interface MealViewController ()
//@property (weak, nonatomic) IBOutlet UILabel *topLabel;
//@property (weak, nonatomic) IBOutlet UILabel *descLabel;
//@property (weak, nonatomic) IBOutlet UIButton *leftBtn;
//@property (weak, nonatomic) IBOutlet UIButton *rightBtn;
//@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (nonatomic, assign) int index;

@property (nonatomic, strong) NSArray *imageDicts;

@end

@implementation MealViewController
UIButton *_leftBtn;
UIButton *_rightBtn;
UIImageView *imageView;
UILabel *topLabel;
UILabel *descLabel;

- (NSArray *)imageDicts
{
    if (!_imageDicts) {
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"imageDate.plist" ofType:nil];
        _imageDicts = [NSArray arrayWithContentsOfFile:path];
    }
    return _imageDicts;
}
- (void)_leftBtnOnClick{
    self.index --;
    
    [self btnClickChange];
    
}
- (void)_rightBtnOnClick{
    self.index ++;
    
    [self btnClickChange];
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Meal";
    self.view.backgroundColor = [UIColor whiteColor];
    
    imageView = [[UIImageView alloc]initWithFrame:CGRectMake(150, 250, 260, 190)];
    imageView.image = [UIImage imageNamed:@"1.jpg"];
    imageView.center = self.view.center;
    [self.view addSubview:imageView];
    
    
//    UILabel *descLabel;
    
    
//    UIFont * customFont = [UIFont fontWithName:@"ArialMIT" size:12]; //custom font
//    NSString * text = @"1/5";
//    
//    CGSize labelSize = [text sizeWithFont:customFont constrainedToSize:CGSizeMake(380, 20) lineBreakMode:NSLineBreakByTruncatingTail];
//    
//    topLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 15, labelSize.width, labelSize.height)];
//    topLabel.text = text;
////    topLabel.font = customFont;
//    topLabel.numberOfLines = 1;
//    topLabel.baselineAdjustment = UIBaselineAdjustmentAlignBaselines; // or UIBaselineAdjustmentAlignCenters, or UIBaselineAdjustmentNone
//    topLabel.adjustsFontSizeToFitWidth = YES;
//    topLabel.adjustsLetterSpacingToFitWidth = YES;
//    topLabel.minimumScaleFactor = 10.0f/12.0f;
//    topLabel.clipsToBounds = YES;
//    topLabel.backgroundColor = [UIColor clearColor];
//    topLabel.textColor = [UIColor blackColor];
//    topLabel.textAlignment = NSTextAlignmentLeft;
//    [self.view addSubview:topLabel];
    
    
    
    UIButton *_leftBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _leftBtn.frame = CGRectMake(0, 390, 60, 40);
    _leftBtn.userInteractionEnabled = YES;
    
    UIImage *btnImage1 = [UIImage imageNamed:@"left_normal.png"];
    [_leftBtn setImage:btnImage1 forState:UIControlStateNormal];
    UIImage *btnImage2 = [UIImage imageNamed:@"left_highlighted.png"];
    [_leftBtn setImage:btnImage2 forState:UIControlStateHighlighted];
    UIImage *btnImage3 = [UIImage imageNamed:@"left_disabled.png"];
    [_leftBtn setImage:btnImage3 forState:UIControlStateDisabled];
    [_leftBtn addTarget:self action:@selector(_leftBtnOnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_leftBtn];
    
    UIButton *_rightBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _rightBtn.frame = CGRectMake(260, 390, 60, 40);
    _rightBtn.userInteractionEnabled = YES;
    
    UIImage *btnImage4 = [UIImage imageNamed:@"right_normal.png"];
    [_rightBtn setImage:btnImage4 forState:UIControlStateNormal];
    UIImage *btnImage5 = [UIImage imageNamed:@"right_highlighted.png"];
    [_rightBtn setImage:btnImage5 forState:UIControlStateHighlighted];
    UIImage *btnImage6 = [UIImage imageNamed:@"right_disabled.png"];
    [_rightBtn setImage:btnImage6 forState:UIControlStateDisabled];
    [_rightBtn addTarget:self action:@selector(_rightBtnOnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_rightBtn];
    
    topLabel = [[UILabel alloc] initWithFrame:CGRectMake(120, 80, 320, 50)];
    topLabel.text = @"WELCOME";
    topLabel.textColor = [UIColor orangeColor];
//    topLabel.textAlignment = UITextAlignmentCenter;
    
    topLabel.backgroundColor = [UIColor whiteColor];
    topLabel.font = [UIFont fontWithName:@"MarkerFelt-Thin" size:14.0];
    topLabel.hidden = NO;
    topLabel.highlighted = YES;
    topLabel.highlightedTextColor = [UIColor blueColor];
    topLabel.lineBreakMode = YES;
    topLabel.numberOfLines = 0;
    [self.view addSubview:topLabel];
    
    descLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 420, 220, 50)];
    descLabel.text = @"WELCOME low";
    descLabel.textColor = [UIColor orangeColor];
    //    topLabel.textAlignment = UITextAlignmentCenter;
    
    descLabel.backgroundColor = [UIColor clearColor];
    descLabel.font = [UIFont fontWithName:@"MarkerFelt-Thin" size:14.0];
    descLabel.hidden = NO;
    descLabel.highlighted = YES;
    descLabel.highlightedTextColor = [UIColor blueColor];
    descLabel.lineBreakMode = YES;
//    descLabel.numberOfLines = 0;
    [self.view addSubview:descLabel];
}

- (void)btnClickChange
{
    topLabel.text = [NSString stringWithFormat:@"%d/%d", (self.index + 1), self.imageDicts.count];
    
    
    descLabel.text = self.imageDicts[self.index][@"description"];
    
    imageView.image = [UIImage imageNamed:self.imageDicts[self.index][@"name"]];
    //
    _leftBtn.enabled = (self.index != 0);
    _rightBtn.enabled = (self.index != 4);
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
