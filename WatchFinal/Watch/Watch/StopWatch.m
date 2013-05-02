//
//  StopWatch.m
//  Watch
//
//  Created by Jacob Ulrich on 4/30/13.
//  Copyright (c) 2013 Jacob Ulrich. All rights reserved.
//

#import "StopWatch.h"

@implementation StopWatch
-(id)initWithName:(NSString *)activity time:(NSString *)time distance:(NSString *)distance date:(NSDate *)date {
    self = [super init];
    if (self) {
        _activity = activity;
        _time = time;
        _distance = distance;
        _date = date;
        return self;
    }
    return nil;
}
@end
