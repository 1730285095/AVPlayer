//
//  W_AVPlayerView.m
//  Wei_AVPlayer
//
//  Created by 陈威 on 2017/8/7.
//  Copyright © 2017年 Weiersi. All rights reserved.
//

#import "W_AVPlayerView.h"
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>
@implementation W_AVPlayerView
{
    AVPlayerLayer *_playerLayer;
}
- (instancetype)initWithMoviePlayerLayer:(AVPlayerLayer *)playerLayer frame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        _playerLayer = playerLayer;
        playerLayer.backgroundColor = [UIColor blackColor].CGColor;
        _playerLayer.videoGravity = AVLayerVideoGravityResizeAspect;
        _playerLayer.contentsScale = [UIScreen mainScreen].scale;
        [self.layer addSublayer:_playerLayer];
    }
    return self;
}
-(void)layoutSublayersOfLayer:(CALayer *)layer{
    [super layoutSublayersOfLayer:layer];
    _playerLayer.bounds = self.layer.bounds;
    _playerLayer.position = self.layer.position;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
