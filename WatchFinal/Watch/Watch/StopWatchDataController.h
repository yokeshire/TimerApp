//
//  StopWatchDataController.h
//  Watch
//
//  Created by Jacob Ulrich on 4/30/13.
//  Copyright (c) 2013 Jacob Ulrich. All rights reserved.
//

#import <Foundation/Foundation.h>
@class StopWatch;

@interface StopWatchDataController : NSObject
@property (nonatomic, copy) NSMutableArray *masterStopWatchList;
- (NSUInteger)countOfList;
- (StopWatch *)objectInListAtIndex:(NSUInteger)theIndex;
- (void)addActivityWithActivity:(StopWatch *)activity;
- (void)deleteObject:(NSUInteger)activity;
@end
