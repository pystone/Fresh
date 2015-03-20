//
//  FVMainFood.m
//  Fresh
//
//  Created by PY on 2/19/15.
//  Copyright (c) 2015 PY. All rights reserved.
//

#import "FVMainFood.h"

@implementation FVMainFood

-(instancetype) init {
    if (self = [super init]) {
        self.contentSize = CGSizeMake(320, 700);
        NSLog(@"hahhaa");
    }
    return self;
}

-(instancetype) initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.contentSize = CGSizeMake(320, 700);
        NSLog(@"hahhaa");
    }
    return self;
}

@end
