//
//  ViewController.m
//  DesignCodeApp
//
//  Created by zhenjun on 2019/6/27.
//  Copyright © 2019 zhenjun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.titleLabel.alpha = 0;
    self.deviceImage.alpha = 0;
    self.playVisualView.alpha = 0;
    
    // self.scrollView.delegate = self;
    
    // 初始化一个动画对象
    CABasicAnimation *animation = [CABasicAnimation animation];
    animation.keyPath = @"opacity";
    animation.toValue = @1;
    animation.duration = 3;
    
    animation.fillMode = kCAFillModeForwards;
    animation.removedOnCompletion = NO;
    
    [self.titleLabel.layer addAnimation:animation forKey:@"basic"];
    [self.deviceImage.layer addAnimation:animation forKey:@"basic"];
    [self.playVisualView.layer addAnimation:animation forKey:@"basic"];
    
    // TODO: 没有起作用
    // self.titleLabel.layer.position = CGPointMake(455, 61);
}

- (void)didReceiveMemoryWarning {
    NSLog( @"memory warning!!" );
}

/**
 * 点击按钮进行播放
 */
- (IBAction)playButtonTapped:(id)sender {
    // 播放视频
    NSLog( @"play button tapped!!" );
    NSString *url = @"https://player.vimeo.com/external/235468301.hd.mp4?s=e852004d6a46ce569fcf6ef02a7d291ea581358e&profile_id=175";
    
    NSURL *nsUrl = [NSURL URLWithString:url];
    AVPlayer *avPlayer = [[AVPlayer alloc] initWithURL:nsUrl];
    AVPlayerViewController *avPlayerViewController = [[AVPlayerViewController alloc] init];
    [avPlayerViewController setPlayer:avPlayer];
    [avPlayer play];
    NSLog( @"%@", url );
}
- (IBAction)handleTouch:(id)sender {
    // NSLog( @"play button tapped!!" );
    NSString *url = @"https://player.vimeo.com/external/235468301.hd.mp4?s=e852004d6a46ce569fcf6ef02a7d291ea581358e&profile_id=175";
    
    NSURL *nsUrl = [NSURL URLWithString:url];
    AVPlayer *avPlayer = [[AVPlayer alloc] initWithURL:nsUrl];
    AVPlayerViewController *avPlayerViewController = [[AVPlayerViewController alloc] init];
    [avPlayerViewController setPlayer:avPlayer];
    [avPlayer play];
    NSLog( @"%@", url );
}

- (IBAction)handlePlatBtnTouched:(id)sender {
    
    NSLog(@"");
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog( @"scroll view!!" );
}
@end
