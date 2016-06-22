//
//  ViewController.m
//  TimelineStatePrototype
//
//  Created by Ken Murphy on 6/22/16.
//  Copyright © 2016 Murphlab. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) BOOL childNightUseStarted;
@property (nonatomic) BOOL childHasUsedLullyAlready;
@property (nonatomic, strong) NSDate *childUseLullyTimeTonight;

@property (weak, nonatomic) IBOutlet UISwitch *nightUseStartedSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *hasUsedLullyAlreadySwitch;
@property (weak, nonatomic) IBOutlet UIDatePicker *useLullyTimeTonightPicker;
@property (weak, nonatomic) IBOutlet UIButton *setTimeButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)nightUseStartedSwitched:(id)sender {
}

- (IBAction)hasUsedLullyAlreadySwitch:(id)sender {
}

- (IBAction)setTimeButtonTapped:(id)sender {
}
@end
