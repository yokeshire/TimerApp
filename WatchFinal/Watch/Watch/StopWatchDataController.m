//
//  StopWatchDataController.m
//  Watch
//
//  Created by Jacob Ulrich on 4/30/13.
//  Copyright (c) 2013 Jacob Ulrich. All rights reserved.
//

#import "StopWatchDataController.h"
#import "StopWatch.h"

@interface StopWatchDataController ()
- (void)initializeDefaultDataList;
@end

@implementation StopWatchDataController
- (id)init {
    if (self = [super init]) {
        [self initializeDefaultDataList];
        return self;
    }
    return nil;
}

- (void)initializeDefaultDataList {
    NSMutableArray *activityList = [[NSMutableArray alloc] init];
    self.masterStopWatchList = activityList;
    StopWatch *activity;
    NSDate *today = [NSDate date];
    activity = [[StopWatch alloc] initWithName:@"Running" time:@"1:00" distance:@"1 mile" date:today];
    [self addActivityWithActivity:activity];
}

- (void)setMasterStopWatchList:(NSMutableArray *)newList {
    if (_masterStopWatchList != newList) {
        _masterStopWatchList = [newList mutableCopy];
    }
}

- (void)deleteObject:(NSUInteger)theIndex {
    [self.masterStopWatchList removeObjectAtIndex:theIndex];
}

- (NSUInteger)countOfList {
    return [self.masterStopWatchList count];
}

- (StopWatch *)objectInListAtIndex:(NSUInteger)theIndex {
    return [self.masterStopWatchList objectAtIndex:theIndex];
}

- (void)addActivityWithActivity:(StopWatch *)activity {
    [self.masterStopWatchList addObject:activity];
}

@end
