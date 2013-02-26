//
//  StopWatchViewController.h
//  watch
//
//  Created by Jacob Ulrich on 2/26/13.
//  Copyright (c) 2013 Jacob Ulrich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StopWatchViewController : UIViewController
{
    //IBOutlet UILabel *stopWatchLabel;
    bool isRunning;
    NSTimer *stopWatchTimer; 
    NSDate *startDate;
    NSTimeInterval totalTimeInterval;
    NSTimeInterval timeInterval;
}
@property (weak, nonatomic) IBOutlet UILabel *stopWatchLabel;

- (IBAction)Start:(UIButton *)sender;

- (IBAction)Reset:(UIButton *)sender;

@end
