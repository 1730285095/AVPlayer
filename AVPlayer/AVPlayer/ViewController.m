//
//  ViewController.m
//  AVPlayer
//
//  Created by 陈威 on 2017/8/12.
//  Copyright © 2017年 Weiersi. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>
#import "W_AVPlayerViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(self.view.center.x-50, 100, 100, 100)];
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"go to play" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(goToPlay) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
- (void)goToPlay{
    NSURL *url = [NSURL URLWithString:@"http://115.231.144.61/1/u/i/v/m/uivmcmiiwgddknrpltuvfepmvgijlz/he.yinyuetai.com/88CE01595A940BC83C7AB2C616308D62.mp4"];
    W_VideoModel *model1 = [[W_VideoModel alloc] initWithName:@"海贼王德岛剪辑(在线)" url:url];
    NSURL *url2 = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"海贼王精彩剪辑" ofType:@"mp4"]];
    W_VideoModel *model2 = [[W_VideoModel alloc] initWithName:@"海贼王精彩剪辑(本地)" url:url2];
    W_AVPlayerViewController *ctr = [[W_AVPlayerViewController alloc] initWithVideoList:@[model1,model2]];
    [self presentViewController:ctr animated:YES completion:^{
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
