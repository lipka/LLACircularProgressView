//
//  LLACircularProgressView.h
//  LLACircularProgressView
//
//  Created by Lukas Lipka on 26/10/13.
//  Copyright (c) 2013 Lukas Lipka. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 Simple `UIControl` for displaying a circular progress view with a stop button.
 */
@interface LLACircularProgressView : UIControl

/**
 The progress of the circular view. Only valid for values between `0` and `1`.
 
 The default is `0`.
 */
@property (nonatomic) float progress;

/**
 A tintColor replacement for pre-iOS7 SDK versions. On iOS7 and higher use `tintColor` for setting this.
 
 The default is the parent view's `tintColor` or a black color on versions lower than iOS7.
 */
@property (nonatomic, strong) UIColor *progressTintColor;

/**
 Set the progress of the circular view in an animated manner. Only valid for values between `0` and `1`.
 */
- (void)setProgress:(float)progress animated:(BOOL)animated;

@end
