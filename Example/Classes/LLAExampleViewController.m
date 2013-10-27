//
//  LLAExampleViewController.m
//  LLACircularProgressView
//
//  Created by Lukas Lipka on 26/10/13.
//  Copyright (c) 2013 Lukas Lipka. All rights reserved.
//

#import "LLAExampleViewController.h"
#import "LLACircularProgressView.h"

@interface LLAExampleViewController ()

@property (nonatomic, strong) LLACircularProgressView *circularProgressView;

@end

@implementation LLAExampleViewController {
    NSTimer *_timer;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.circularProgressView = [[LLACircularProgressView alloc] init];
    self.circularProgressView.frame = CGRectMake(0, 0, 30, 30);
    self.circularProgressView.center = CGPointMake(CGRectGetMidX(self.view.bounds), 50);
    [self.circularProgressView addTarget:self action:@selector(stop:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.circularProgressView];

    _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(tick:) userInfo:nil repeats:YES];
}

- (void)tick:(NSTimer *)timer {
    CGFloat progress = self.circularProgressView.progress;
    [self.circularProgressView setProgress:(progress <= 1.00f ? progress + 0.1f : 0.0f) animated:YES];
}

- (void)stop:(id)sender {
    [_timer invalidate];

    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"LLACircularProgressView" message:@"Yep, it's done. Check the dimmed colors effect." delegate:nil cancelButtonTitle:@"Done" otherButtonTitles:nil];
    [alertView show];
}

@end
