//
//  StopWatch.h
//  Watch
//
//  Created by Jacob Ulrich on 4/30/13.
//  Copyright (c) 2013 Jacob Ulrich. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StopWatch : NSObject

@property (nonatomic, copy) NSString *activity;
@property (nonatomic, copy) NSString *time;
@property (nonatomic, copy) NSString *distance;
@property (nonatomic, strong) NSDate *date;
-(id)initWithName:(NSString *)activity time:(NSString *)time distance:(NSString *)distance date:(NSDate *)date;
@end


