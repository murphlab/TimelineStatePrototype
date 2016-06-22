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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
