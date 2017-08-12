//
//  W_AVPlayerView.h
//  Wei_AVPlayer
//
//  Created by 陈威 on 2017/8/7.
//  Copyright © 2017年 Weiersi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface W_AVPlayerView : UIControl
- (instancetype)initWithMoviePlayerLayer:(AVPlayerLayer *)playerLayer frame :(CGRect)frame;
@end
