//
//  FFoodManager.h
//  Fresh
//
//  Created by PY on 2/19/15.
//  Copyright (c) 2015 PY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FFoodManager : NSObject

@property (nonatomic) NSMutableArray* _boughtFoods;
@property (nonatomic) NSMutableArray* _tobuyFoods;

+(instancetype) sharedFoodManager;
-(instancetype) init;

@end
