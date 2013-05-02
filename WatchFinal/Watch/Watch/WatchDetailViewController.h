//
//  WatchDetailViewController.h
//  Watch
//
//  Created by Jacob Ulrich on 4/30/13.
//  Copyright (c) 2013 Jacob Ulrich. All rights reserved.
//

#import <UIKit/UIKit.h>

@class StopWatch;

@interface WatchDetailViewController : UITableViewController
@property (strong, nonatomic) StopWatch *activity;
@property (weak, nonatomic) IBOutlet UILabel *activityLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *distanceLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@end
