//
//  WatchDetailViewController.m
//  Watch
//
//  Created by Jacob Ulrich on 4/30/13.
//  Copyright (c) 2013 Jacob Ulrich. All rights reserved.
//

#import "WatchDetailViewController.h"
#import "StopWatch.h"

@interface WatchDetailViewController ()
-(void)configureview;
@end

@implementation WatchDetailViewController

- (void)setActivity:(StopWatch*)newActivity {
    if (_activity  != newActivity) {
        _activity = newActivity;
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    StopWatch *theActivity = self.activity;
    
    static NSDateFormatter *formatter = nil;
    if (formatter == nil) {
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
    }
    if (theActivity) {
        self.activityLabel.text = theActivity.activity;
        self.timeLabel.text = theActivity.time;
        self.distanceLabel.text = theActivity.distance;
        self.dateLabel.text = [formatter stringFromDate:(NSDate *)theActivity.date];
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureView];
}

- (void)viewDidUnload {
    self.activity = nil;
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
