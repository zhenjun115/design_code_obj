//
//  ViewController.h
//  DesignCodeApp
//
//  Created by zhenjun on 2019/6/27.
//  Copyright © 2019 zhenjun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVKit/AVKit.h>

@interface ViewController : UIViewController<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *deviceImage;
@property (weak, nonatomic) IBOutlet UIVisualEffectView *playVisualView;
// - (IBAction)playButtonTapped:(id)sender;
// - (IBAction)playButtonTouched:(id)sender;
- (IBAction)handleTouch:(id)sender;
- (IBAction)handlePlatBtnTouched:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImg;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIView *bookView;
@property (weak, nonatomic) IBOutlet UIView *heroView;

@end

