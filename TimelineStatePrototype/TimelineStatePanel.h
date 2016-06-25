//
//  TimelineStatePanel.h
//  TimelineStatePrototype
//
//  Created by Ken Murphy on 6/22/16.
//  Copyright © 2016 Murphlab. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TimelineStatePanelDelegate;

@interface TimelineStatePanel : UIView
@property (nonatomic, weak) id<TimelineStatePanelDelegate> delegate;
@end

@protocol TimelineStatePanelDelegate <NSObject>

// Data:
- (BOOL)childNightUseStartedForTimelineStatePanel:(TimelineStatePanel *)timelineStatePanel;
- (BOOL)childHasUsedLullyAlreadyForTimelineStatePanel:(TimelineStatePanel *)timelineStatePanel;
- (NSDate *)childUseLullyTimeTonightForTimelineStatePanel:(TimelineStatePanel *)timelineStatePanel;
- (NSString *)childNameForTimelineStatePanel:(TimelineStatePanel *)timelineStatePanel;

// Actions:
- (void)startBedtimeButtonTappedForTimelineStatePanel:(TimelineStatePanel *)timelineStatePanel;
- (void)returnToTimelineButtonTappedForTimelineStatePanel:(TimelineStatePanel *)timelineStatePanel;
- (void)cancelButtonTappedForTimelineStatePanel:(TimelineStatePanel *)timelineStatePanel;
@end