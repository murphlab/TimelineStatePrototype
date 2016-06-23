//
//  ViewController.m
//  TimelineStatePrototype
//
//  Created by Ken Murphy on 6/22/16.
//  Copyright © 2016 Murphlab. All rights reserved.
//

#import "ViewController.h"
#import "TimelineStatePanel.h"

@interface ViewController () <TimelineStatePanelDelegate>

@property (weak, nonatomic) IBOutlet UISwitch *nightUseStartedSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *hasUsedLullyAlreadySwitch;
@property (weak, nonatomic) IBOutlet UIDatePicker *useLullyTimeTonightPicker;
@property (weak, nonatomic) IBOutlet UIButton *setTimeButton;
@property (weak, nonatomic) IBOutlet TimelineStatePanel *timelineStatePanel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.timelineStatePanel.delegate = self;
    self.nightUseStartedSwitch.on = NO;
    self.hasUsedLullyAlreadySwitch.on = NO;
}

#pragma mark - Actions

- (IBAction)nightUseStartedSwitched:(id)sender {
    [self.timelineStatePanel setNeedsLayout];
}

- (IBAction)hasUsedLullyAlreadySwitch:(id)sender {
    [self.timelineStatePanel setNeedsLayout];
}

- (IBAction)setTimeButtonTapped:(id)sender {
    [self.timelineStatePanel setNeedsLayout];
}

#pragma mark - TimelineStatePanelDelegate

- (BOOL)childNightUseStartedForTimelineStatePanel:(TimelineStatePanel *)timelineStatePanel
{
    return self.nightUseStartedSwitch.on;
}

- (BOOL)childHasUsedLullyAlreadyForTimelineStatePanel:(TimelineStatePanel *)timelineStatePanel
{
    return self.hasUsedLullyAlreadySwitch.on;
}

- (NSDate *)childUseLullyTimeTonightForTimelineStatePanel:(TimelineStatePanel *)timelineStatePanel
{
    return self.useLullyTimeTonightPicker.date;
}

- (void)startBedtimeButtonTappedForTimelineStatePanel:(TimelineStatePanel *)timelineStatePanel
{
    NSLog(@"TAPPED: startBedtimeButton");
    self.nightUseStartedSwitch.on = YES;
    [self.timelineStatePanel setNeedsLayout];
}

- (void)returnToTimelineButtonTappedForTimelineStatePanel:(TimelineStatePanel *)timelineStatePanel
{
    NSLog(@"TAPPED: returnToTimelineButton");
}

- (void)cancelButtonTappedForTimelineStatePanel:(TimelineStatePanel *)timelineStatePanel
{
    NSLog(@"TAPPED: cancelButton");
}

@end
