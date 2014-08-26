<p align="center" >
  <img src="http://i.imgur.com/q0HduL5.png" alt="LLACircularProgressView" title="LLACircularProgressView">
</p>

[![Build Status](https://travis-ci.org/lipka/LLACircularProgressView.svg)](https://travis-ci.org/lipka/LLACircularProgressView)
[![Version](http://cocoapod-badges.herokuapp.com/v/LLACircularProgressView/badge.png)](http://cocoadocs.org/docsets/LLACircularProgressView)
[![Platform](http://cocoapod-badges.herokuapp.com/p/LLACircularProgressView/badge.png)](http://cocoadocs.org/docsets/LLACircularProgressView)

LLACircularProgressView is a deligthful iOS7 style circular progress view with a stop button.

- Animated progress display
- Stop button
- Respects iOS7 interface tint color
- Automatically dims the tint color when an alert view or an action sheet is presented
- iOS7 compatible

## Example

![Screenshot](http://i.imgur.com/LboRSet.png)

Open up the included Xcode project for an example app.

## Usage

``` objc
// Initialize the progress view
LLACircularProgressView *circularProgressView = [[LLACircularProgressView alloc] init];

// Optionally set the current progress
circularProgressView.progress = 0.5f;

// Optionally change the tint color
circulerProgressView.tintColor = [UIColor redColor];

// Optionally hook up the stop action
[circularProgressView addTarget:self action:@selector(stop:) forControlEvents:UIControlEventTouchUpInside];

// Add it as a subview
[self.view addSubview:circularProgressView];

...

// Animate progress changes
[circularProgressView setProgress:0.8f animated:YES];
```

// Initalize a timer 
_progressTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(updateSlider) userInfo:nil repeats:YES];

// Add it to the current run loop so that the progress doesn't stop on a UI event (eg. when you put a circular progress bar in a UIScrollView)
[[NSRunLoop currentRunLoop] addTimer:_progressTimer forMode:NSRunLoopCommonModes];

See the [header](LLACircularProgressView/LLACircularProgressView.h) for full documentation.

## Installation

[CocoaPods](http://cocoapods.org) is the recommended method of installing LLACircularProgressView. Simply add the following line to your `Podfile`:

#### Podfile

```ruby
pod 'LLACircularProgressView'
```

Otherwise you can just add `LLACircularProgressView.h` and `LLACircularProgressView.m` to your project.

## Requirements

LLACircularProgressView is tested on iOS6 and iOS7 and requires ARC.

## Contact

Lukas Lipka

- http://github.com/lipka
- http://twitter.com/lipec
- http://lukaslipka.com

## License

LLACircularProgressView is available under the [MIT license](LICENSE). See the LICENSE file for more info.
