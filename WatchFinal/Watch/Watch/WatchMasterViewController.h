//
//  WatchMasterViewController.h
//  Watch
//
//  Created by Jacob Ulrich on 4/30/13.
//  Copyright (c) 2013 Jacob Ulrich. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddStopWatchViewController.h"
@class StopWatchDataController;

@interface WatchMasterViewController : UITableViewController

@property (strong, nonatomic) StopWatchDataController *dataController;

- (IBAction)done:(UIStoryboardSegue *)segue;

- (IBAction)cancel:(UIStoryboardSegue *)segue;

@end
