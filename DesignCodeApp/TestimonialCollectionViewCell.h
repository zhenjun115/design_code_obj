//
//  TestimonialCollectionViewCell.h
//  DesignCodeApp
//
//  Created by zhenjun on 2019/7/16.
//  Copyright © 2019 zhenjun. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestimonialCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UILabel *text;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *job;
@property (weak, nonatomic) IBOutlet UIImageView *avator;

@end

NS_ASSUME_NONNULL_END
