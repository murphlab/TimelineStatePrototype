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
        _nightUseStartedView = [[UIView alloc] initWithFrame:self.bounds];
        _nightUseStartedView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        // Has kid been tucked in? start bedtime (button covers entire view)
        
        NSString *kidName = @"XXXX";
        
        NSString *questionLabelString = [NSString stringWithFormat:@"Has %@ been tucked into bed?", kidName];
        UILabel *questionLabel = [[UILabel alloc] init];
        questionLabel.text = questionLabelString;
        [questionLabel sizeToFit];
        [_nightUseStartedView addSubview:questionLabel];
    }
    return _nightUseStartedView;
}

@end
