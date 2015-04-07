//
//  MyFridgeViewController.m
//  
//
//  Created by steven on 4/6/15.
//
//

#import "MyFridgeViewController.h"
#import "InputViewController.h"// modal
#import "PushViewController.h"// push pop
#import "RootViewController.h"
CGFloat const writebtnWidth =33;
CGFloat const writebtnHeight=32;
@interface MyFridgeViewController ()

@end

@implementation MyFridgeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"My Fridge";
    self.view.backgroundColor = [UIColor whiteColor];
    [self initNavButton];
    [self initPushAction];
}

// customize write button,
- (void)initNavButton{
    UIButton *writebtn = [UIButton buttonWithType:UIButtonTypeCustom];// init based on type
    writebtn.frame = CGRectMake(0, 0, writebtnWidth, writebtnHeight);// set size
    [writebtn setBackgroundImage:[UIImage imageNamed:@"write"] forState:UIControlStateNormal];// set BG
    [writebtn addTarget:self action:@selector(presentAction) forControlEvents:UIControlEventTouchUpInside];// set action
    // add buttom in the navigation bar
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:writebtn];
    self.navigationItem.rightBarButtonItem = item;
}


- (void)presentAction{
    InputViewController *inputVC = [[InputViewController alloc] init];
    // modal view
    [self presentViewController:inputVC animated:YES completion:nil];
}

// init Push button
- (void)initPushAction{
    UIButton *pushButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    pushButton.frame = CGRectMake(60, 60, 100, 40);
    [pushButton setTitle:@"INTO Food" forState:UIControlStateNormal];
    [pushButton addTarget:self action:@selector(pushAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
}

- (void)pushAction{
    PushViewController *pushVC = [[PushViewController alloc] init];
    [self.navigationController pushViewController:pushVC animated:YES];
    RootViewController *rootVC = (RootViewController *)self.tabBarController;
    [rootVC showTabBar:NO];
}


// when view showup this method will be call
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    RootViewController *rootVC = (RootViewController *)self.tabBarController;
    [rootVC showTabBar:YES];
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
