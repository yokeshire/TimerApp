//
//  StopWatchViewController.m
//  Watch
//
//  Created by Jacob Ulrich on 5/1/13.
//  Copyright (c) 2013 Jacob Ulrich. All rights reserved.
//

#import "StopWatchViewController.h"

@interface StopWatchViewController ()

@end

@implementation StopWatchViewController

- (void)viewDidLoad
{
    //[_stopWatchLabel setFont:[UIFont fontWithName:@"DS-Digital" size:84]];
    [super viewDidLoad];
    [_stopWatchLabel setFont:[UIFont fontWithName:@"DS-Digital" size:60]];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)updateTimer
{
    if (isRunning == false) return;
    
    NSDate *currentDate = [NSDate date];
    timeInterval = [currentDate timeIntervalSinceDate:startDate];
    timeInterval += totalTimeInterval;
    NSDate *timerDate = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"HH:mm:ss.S"];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0.0]];
    NSString *timeString=[dateFormatter stringFromDate:timerDate];
    _stopWatchLabel.text = timeString;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Start:(UIButton *)sender {
    
    
    if (isRunning == false)
    {
        isRunning = true;
        startDate = [NSDate date];
        [sender setTitle:@"Stop" forState:UIControlStateNormal];
        stopWatchTimer = [NSTimer scheduledTimerWithTimeInterval:1.0/10.0 target:self selector:@selector(updateTimer)userInfo:nil repeats:YES];
    }
    else
    {
        [sender setTitle:@"Start" forState:UIControlStateNormal];
        totalTimeInterval = timeInterval;
        isRunning = false;
    }
    
}

- (IBAction)Reset:(UIButton *)sender {
    _stopWatchLabel.text = @"00:00:00.0";
    totalTimeInterval = 0;
}
@end
