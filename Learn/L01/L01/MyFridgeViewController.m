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
#import "DetailsViewController.h"

CGFloat const writebtnWidth =33;
CGFloat const writebtnHeight=32;

@interface MyFridgeViewController ()
//- (void)configureView;
@end

@implementation MyFridgeViewController
//@synthesize newsArray;
//@synthesize tableView;


//- (id)initWithNibName:(NSString*)nibName bundle:(NSString*)bundleName
//{
//    self = [super initWitNibName:nibName bundle:bundleName];
//    if (self)
//    {
//        self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
//        tableView.datasource = self;
//        tableView.delegate = self;
//        [self.view addSubview:self.tableView];
//    }
//    
//    return self;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"My Fridge";
//    self.view.backgroundColor = [UIColor whiteColor];
    [self initNavButton];
//    [self initPushAction];

    // create a tableview
    UITableView *_tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 1500, 500)];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
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

//// init Push button
//- (void)initPushAction{
//    UIButton *pushButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    pushButton.frame = CGRectMake(60, 60, 100, 40);
//    [pushButton setTitle:@"INTO Food" forState:UIControlStateNormal];
//    [pushButton addTarget:self action:@selector(pushAction) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:pushButton];
//}

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

#pragma mark - UITableViewDataSource Methods

//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    // return number of rows
//}
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    // return cell
//}
//
//#pragma mark - UITableViewDelegate Methods
//
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    // handle table view selection
//}

//
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    [self configureCell:cell forIndexPath:indexPath];
    
    return cell;
}

- (void)configureCell:(UITableViewCell *)cell forIndexPath:(NSIndexPath *)indexPath {
    [[cell textLabel] setText:[NSString stringWithFormat:@"%@'s Food %ld", self.title, (long)indexPath.row]];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 15;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    UIViewController *viewController = [[DetailsViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
