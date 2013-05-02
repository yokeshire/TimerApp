//
//  AddStopWatchViewController.m
//  Watch
//
//  Created by Jacob Ulrich on 4/30/13.
//  Copyright (c) 2013 Jacob Ulrich. All rights reserved.
//

#import "AddStopWatchViewController.h"

#import "StopWatch.h"

@interface AddStopWatchViewController ()

@end

@implementation AddStopWatchViewController

- (id)initWithStyle:(UITableViewStyle)style {
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if ((textField == self.activityInput) || (textField == self.timeInput)) {
        [textField resignFirstResponder];
    }
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"ReturnInput"]) {
        if ([self.activityInput.text length] || [self.timeInput.text length]) {
            StopWatch *activity;
            NSDate *today = [NSDate date];
            activity = [[StopWatch alloc] initWithName:self.activityInput.text time:self.timeInput.text distance:self.distanceInput.text date:today];
                self.stopWatch = activity;
        }
    }
}

@end
