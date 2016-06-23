//
//  TimelineStatePanel.m
//  TimelineStatePrototype
//
//  Created by Ken Murphy on 6/22/16.
//  Copyright © 2016 Murphlab. All rights reserved.
//

#import "TimelineStatePanel.h"

@interface TimelineStatePanel ()
@property (nonatomic, readonly) UIView *nightUseStartedView;
@end

@implementation TimelineStatePanel

@synthesize nightUseStartedView = _nightUseStartedView;

- (void)layoutSubviews
{
    [self.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    if ([self.delegate childNightUseStartedForTimelineStatePanel:self]) {
        
        [self addSubview:self.nightUseStartedView];
        
    } else {
        
        
        
    }
}

#pragma mark - Getters and Setters

#pragma mark Public

#pragma mark Private

- (UIView *)nightUseStartedView
{
    if (!_nightUseStartedView) {
        
        _nightUseStartedView = [[[NSBundle mainBundle] loadNibNamed:@"NightUseStartedView" owner:self options:nil] objectAtIndex:0];
        _nightUseStartedView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        _nightUseStartedView.frame = self.bounds;

    }
    return _nightUseStartedView;
}

@end
