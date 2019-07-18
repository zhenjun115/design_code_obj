//
//  TestimonialViewController.m
//  DesignCodeApp
//
//  Created by zhenjun on 2019/7/16.
//  Copyright © 2019 zhenjun. All rights reserved.
//

#import "TestimonialViewController.h"
#import "TestimonialCollectionViewCell.h"

@implementation TestimonialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.testimonialCollectionView.delegate = self;
    self.testimonialCollectionView.dataSource = self;
    
    self.data = @[
                  @{
                   @"text": @"Design+Code is a wake-up call. Why should I learn a web based technology or a deprecated tool when the obvious choice is to learn Xcode?",
                   @"name": @"Jean-Marc Denis",
                   @"job": @"Product Designer at Facebook",
                   @"avatar": @"avatar-jean-marc"
                  },
                  @{
                   @"text": @"If you're comfortable with Framer, you can easily transfer your knowledge to Swift. You can animate pretty easily while building an app.",
                   @"name": @"Min-Sang Choi",
                   @"job": @"Interaction Designer at Google",
                   @"avatar": @"avatar-min-sang"
                  },
                  @{
                   @"text": @"First of all I am 12 years old, live in Britain and I just realised that all I want to do for the rest of my life is design amazing things. (Tom Fox won a scolarship for WWDC 2015)",
                   @"name": @"Tom Fox",
                   @"job": @"Student",
                   @"avatar": @"avatar-tom-fox"
                  },
                  @{
                   @"text": @"As a developer, I really appreciated the chapters on Color Theory and Typography. It was just the right balance of theory combined with practical examples.",
                   @"name": @"Chris Ching",
                   @"job": @"Teaches iOS Programming",
                   @"avatar": @"avatar-chris-ching"
                  },
                  @{
                   @"text": @"I began a Swift learning plan 5 days ago, this is part of what I did in five days. I learned a lot from Meng To's Design+Code.",
                   @"name": @"MartinRGB",
                   @"job": @"Designer and Coder",
                   @"avatar": @"avatar-martin-rgb"
                  },
                  @{
                   @"text": @"Thanks to Design + Code, I just released my first app on the store: Sky Graph. It's been a great learning experience as a designer learning to code.",
                   @"name": @"Wayne Sang",
                   @"job": @"Senior Product Manager at TWG",
                   @"avatar": @"avatar-wayne-sang"
                  },
                  @{
                   @"text": @"I found and bought Design+Code by Meng To which takes you through each step of the process from design to code to app store submission.",
                   @"name": @"Kenny Chen",
                   @"job": @"User Experience Designer at Bankrate",
                   @"avatar": @"avatar-kenny-chen"
                  },
                  @{
                   @"text": @"Thanks to @MengTo, I was able to get a rough prototype of my first app working this weekend.",
                   @"name": @"Andrew McCarthy",
                   @"job": @"Product Designer",
                   @"avatar": @"avatar-andrew-mccarthy"
                  }
    ];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    TestimonialCollectionViewCell *cell = [self.testimonialCollectionView dequeueReusableCellWithReuseIdentifier:@"testimonialCell" forIndexPath:indexPath];
    NSDictionary *dataItem = self.data[indexPath.row];
    
    cell.text.text = dataItem[@"text"];
    cell.name.text = dataItem[@"name"];
    cell.job.text = dataItem[@"job"];
    cell.avator.image = [UIImage imageNamed: dataItem[@"avatar"]];
    
    return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.data count];
}

@end
