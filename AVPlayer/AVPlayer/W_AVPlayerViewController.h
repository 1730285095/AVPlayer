//
//  W_AVPlayerViewController.h
//  Wei_AVPlayer
//
//  Created by 陈威 on 2017/8/7.
//  Copyright © 2017年 Weiersi. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface W_VideoModel:NSObject
@property (nonatomic,copy,readonly)NSString *name;
@property (nonatomic,strong,readonly)NSURL *URL;
- (instancetype)initWithName:(NSString *)name url:(NSURL *)url;

@end
@interface W_AVPlayerViewController : UIViewController
- (instancetype)initWithVideoList:(NSArray <W_VideoModel *> *)VideoList;
@end
