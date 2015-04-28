//
//  MyFridgeTableViewController.h
//  L01
//
//  Created by steven on 4/26/15.
//  Copyright (c) 2015 steven. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyFridgeTableViewController : UITableViewController

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *newsArray;

@end
