//
//  AddStopWatchViewController.h
//  Watch
//
//  Created by Jacob Ulrich on 4/30/13.
//  Copyright (c) 2013 Jacob Ulrich. All rights reserved.
//

#import <UIKit/UIKit.h>
@class StopWatch;
@interface AddStopWatchViewController : UITableViewController <UITextFieldDelegate>
@property (strong, nonatomic) StopWatch *stopWatch;
@property (weak, nonatomic) IBOutlet UITextField *activityInput;
@property (weak, nonatomic) IBOutlet UITextField *distanceInput;
@property (weak, nonatomic) IBOutlet UITextField *timeInput;

@end
