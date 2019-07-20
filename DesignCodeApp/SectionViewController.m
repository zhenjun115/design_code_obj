//
//  SectionViewController.m
//  DesignCodeApp
//
//  Created by zhenjun on 2019/7/8.
//  Copyright © 2019 zhenjun. All rights reserved.
//

#import "SectionViewController.h"

@implementation SectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // self.titleLabel.text = self.section[@"title"];
    // self.descLabel.text = self.section[@"descLabel"];
    // self.otherLabel.text = self.section[@"otherLabel"];
    // self.coverImg.image = [UIImage imageNamed:self.section[@"cover"]];
    
    // section 进度信息
    // self.progressLabel.text = [NSString stringWithFormat:@"%ld,%ld", self.indexPath.row + 1, self.section.count];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)handleCloseBtnTapped:(UIButton *)sender {
    NSLog( @"handle close btn tapped!!" );
    [self dismissViewControllerAnimated:true completion: nil];
}
@end
