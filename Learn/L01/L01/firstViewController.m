//
//  firstViewController.m
//  L01
//
//  Created by steven on 4/28/15.
//  Copyright (c) 2015 steven. All rights reserved.
//

#import "firstViewController.h"

@interface firstViewController ()
@property (nonatomic, strong) NSArray *imageDicts;
@end

@implementation firstViewController
UIImageView *imageView;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Meal";
    self.view.backgroundColor = [UIColor whiteColor];
    
    imageView = [[UIImageView alloc]initWithFrame:CGRectMake(150, 250, 260, 190)];
    imageView.image = [UIImage imageNamed:@"1.jpg"];
    imageView.center = self.view.center;
    [self.view addSubview:imageView];
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
