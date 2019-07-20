//
//  SectionViewController.h
//  DesignCodeApp
//
//  Created by zhenjun on 2019/7/8.
//  Copyright © 2019 zhenjun. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SectionViewController : UIViewController {
    NSArray *array;
}
@property (weak, nonatomic) IBOutlet UILabel *progressLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descLabel;
@property (weak, nonatomic) IBOutlet UILabel *otherLabel;
@property (weak, nonatomic) IBOutlet UIImageView *coverImg;

// view之间接收数据
@property (weak, atomic) NSDictionary *section;
@property (weak, atomic) NSIndexPath *indexPath;

- (IBAction)handleCloseBtnTapped:(UIButton *)sender;

@end

NS_ASSUME_NONNULL_END
