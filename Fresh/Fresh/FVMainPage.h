//
//  FVMainPage.h
//  Fresh
//
//  Created by PY on 2/19/15.
//  Copyright (c) 2015 PY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface FVMainPage : UIViewController

@property (strong, nonatomic) UIButton* _manageFoodBtn;

-(void) goToManageFoodPage: (UIButton*) button;
@end
