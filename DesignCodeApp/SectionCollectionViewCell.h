//
//  SectionCollectionViewCell.h
//  DesignCodeApp
//
//  Created by zhenjun on 2019/7/14.
//  Copyright © 2019 zhenjun. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SectionCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *cellBackImg;
@property (weak, nonatomic) IBOutlet UILabel *topTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *bottomDescLabel;

@end

NS_ASSUME_NONNULL_END
