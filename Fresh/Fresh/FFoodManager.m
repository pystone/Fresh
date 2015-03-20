//
//  FFoodManager.m
//  Fresh
//
//  Created by PY on 2/19/15.
//  Copyright (c) 2015 PY. All rights reserved.
//

#import "FFoodManager.h"

static FFoodManager *_sharedFoodManager;

@implementation FFoodManager

+(instancetype) sharedFoodManager {
    if (!_sharedFoodManager) {
        _sharedFoodManager = [[FFoodManager alloc] init];
    }
    return _sharedFoodManager;
}

-(instancetype) init {
    if (self = [super init]) {
        // init
    }
    return self;
}
@end
