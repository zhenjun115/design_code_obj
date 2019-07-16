//
//  TestimonialViewController.h
//  DesignCodeApp
//
//  Created by zhenjun on 2019/7/16.
//  Copyright © 2019 zhenjun. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestimonialViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *testimonialCollectionView;
@property NSArray *data;

@end

NS_ASSUME_NONNULL_END
