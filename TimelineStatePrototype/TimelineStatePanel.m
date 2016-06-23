//
//  TimelineStatePanel.m
//  TimelineStatePrototype
//
//  Created by Ken Murphy on 6/22/16.
//  Copyright © 2016 Murphlab. All rights reserved.
//

#import "TimelineStatePanel.h"
#import <QuartzCore/QuartzCore.h>

@interface TimelineStatePanel ()
@property (nonatomic, readonly) UIView *nightUseNotStartedView;
@property (nonatomic, readonly) UIView *nightUseStartedView;

@property (weak, nonatomic) IBOutlet UIView *nightUseStartedViewCancelContainerView;
@end

@implementation TimelineStatePanel

@synthesize nightUseNotStartedView = _nightUseNotStartedView;
@synthesize nightUseStartedView = _nightUseStartedView;

- (void)layoutSubviews
{
    [self.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    if ([self.delegate childNightUseStartedForTimelineStatePanel:self]) {

        [self addSubview:self.nightUseStartedView];
        
    } else {
        
        [self addSubview:self.nightUseNotStartedView];
        
        
    }
}

#pragma mark Actions

- (IBAction)startBedtimeButtonTapped:(UIButton *)sender {
    [self.delegate startBedtimeButtonTappedForTimelineStatePanel:self];
}


#pragma mark - Getters and Setters

#pragma mark Public

#pragma mark Private

- (UIView *)nightUseNotStartedView
{
    if (!_nightUseNotStartedView) {
        
        _nightUseNotStartedView = [[[NSBundle mainBundle] loadNibNamed:@"NightUseNotStartedView" owner:self options:nil] objectAtIndex:0];
        _nightUseNotStartedView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        _nightUseNotStartedView.frame = self.bounds;
        
    }
    return _nightUseNotStartedView;
}

- (UIView *)nightUseStartedView
{
    if (!_nightUseStartedView) {
        
        _nightUseStartedView = [[[NSBundle mainBundle] loadNibNamed:@"NightUseStartedView" owner:self options:nil] objectAtIndex:0];
        _nightUseStartedView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        _nightUseStartedView.frame = self.bounds;
        
        self.nightUseStartedViewCancelContainerView.layer.cornerRadius = 8.0;
        self.nightUseStartedViewCancelContainerView.layer.borderWidth = 1.0;
        self.nightUseStartedViewCancelContainerView.layer.borderColor = [[UIColor whiteColor] CGColor];
        
    }
    return _nightUseStartedView;
}

@end
