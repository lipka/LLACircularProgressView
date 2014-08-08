//
//  LLACircularProgressViewTests.m
//  LLACircularProgressViewTests
//
//  Created by Lukas Lipka on 26/10/13.
//  Copyright (c) 2013 Lukas Lipka. All rights reserved.
//

#import <LLACircularProgressView/LLACircularProgressView.h>

SpecBegin(LLACircularProgressView)

it(@"should fit in bounds", ^{
    LLACircularProgressView *progressView = [[LLACircularProgressView alloc] initWithFrame:CGRectZero];
    progressView.frame = CGRectMake(0, 0, 40, 40);
    progressView.backgroundColor = [UIColor whiteColor];

    expect(progressView).to.haveValidSnapshot();
});

SpecEnd