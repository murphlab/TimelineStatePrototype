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

@property (nonatomic) BOOL childNightUseStarted;
@property (nonatomic) BOOL childHasUsedLullyAlready;
@property (nonatomic, strong) NSDate *childUseLullyTimeTonight;

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
}

#pragma mark - Actions

- (IBAction)nightUseStartedSwitched:(id)sender {
}

- (IBAction)hasUsedLullyAlreadySwitch:(id)sender {
}

- (IBAction)setTimeButtonTapped:(id)sender {
}

#pragma mark - TimelineStatePanelDelegate

- (BOOL)childNightUseStartedForTimelineStatePanel:(TimelineStatePanel *)timelineStatePanel
{
    return self.childNightUseStarted;
}

- (BOOL)childHasUsedLullyAlreadyForTimelineStatePanel:(TimelineStatePanel *)timelineStatePanel
{
    return self.childHasUsedLullyAlready;
}

- (NSDate *)childUseLullyTimeTonightForTimelineStatePanel:(TimelineStatePanel *)timelineStatePanel
{
    return self.childUseLullyTimeTonight;
}

- (void)startBedtimeButtonTappedForTimelineStatePanel:(TimelineStatePanel *)timelineStatePanel
{
    NSLog(@"TAPPED: startBedtimeButton");
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
