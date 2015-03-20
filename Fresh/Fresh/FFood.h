//
//  FFood.h
//  Fresh
//
//  Created by PY on 2/19/15.
//  Copyright (c) 2015 PY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FTypes.h"
#import "FFoodNumber.h"

@interface FFood : NSObject


@property (nonatomic) NSString* _name;
@property (nonatomic) NSString* _picPath;
@property (nonatomic) FFoodState _state;
@property (nonatomic) NSDate* _expireTime;
@property (nonatomic) FFoodNumber* _number;

@end
