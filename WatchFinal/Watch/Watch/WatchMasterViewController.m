//
//  WatchMasterViewController.m
//  Watch
//
//  Created by Jacob Ulrich on 4/30/13.
//  Copyright (c) 2013 Jacob Ulrich. All rights reserved.
//


#import "WatchMasterViewController.h"
#import "StopWatchDataController.h"
#import "WatchDetailViewController.h"
#import "StopWatch.h"


@implementation WatchMasterViewController

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        [self.dataController deleteObject:indexPath.row];
        [self.tableView reloadData];
    }
}

- (void)awakeFromNib {
    [super awakeFromNib];
    self.dataController = [[StopWatchDataController alloc] init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self.tableView setFont:[UIFont fontWithName:@"DS-Digital" size:18]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.dataController countOfList];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"ActivityCell";
    
    static NSDateFormatter *formatter = nil;
    if (formatter == nil) {
        formatter = [[NSDateFormatter alloc] init];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
    }
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    StopWatch *sightingAtIndex = [self.dataController objectInListAtIndex:indexPath.row];
    [[cell textLabel] setText:sightingAtIndex.activity];
    [[cell detailTextLabel] setText:[formatter stringFromDate:(NSDate *)sightingAtIndex.date]];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    return cell;
    
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"ActivityDetailView"]) {
        WatchDetailViewController *detailViewController = [segue destinationViewController];
        detailViewController.activity = [self.dataController objectInListAtIndex:[self.tableView indexPathForSelectedRow].row];
    }
}

- (IBAction)done:(UIStoryboardSegue *)segue

{
    
    if ([[segue identifier] isEqualToString:@"ReturnInput"]) {
        
        AddStopWatchViewController *addController = [segue sourceViewController];
        if (addController.stopWatch) {
            [self.dataController addActivityWithActivity:addController.stopWatch];
            [[self tableView] reloadData];
        }
        [self dismissViewControllerAnimated:YES completion:NULL];
    }
    
}
- (IBAction)cancel:(UIStoryboardSegue *)segue{
    if ([[segue identifier] isEqualToString:@"CancelInput"]) {
        [self dismissViewControllerAnimated:YES completion:NULL];
    }
}
@end
