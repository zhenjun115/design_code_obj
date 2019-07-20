//
//  ViewController.m
//  DesignCodeApp
//
//  Created by zhenjun on 2019/6/27.
//  Copyright © 2019 zhenjun. All rights reserved.
//

#import "ViewController.h"
#import "Data.h"
#import "SectionCollectionViewCell.h"
#import "SectionViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // self.titleLabel.alpha = 0;
    // self.deviceImage.alpha = 0;
    // self.playVisualView.alpha = 0;
    
    self.scrollView.delegate = self;
    self.chapterCollectionView.delegate = self;
    self.chapterCollectionView.dataSource = self;
    
    Data *data = [[Data alloc] init];
    self.dictArray = data.dictArray;
    
    // 初始化一个动画对象
    /*CABasicAnimation *animation = [CABasicAnimation animation];
    animation.keyPath = @"opacity";
    animation.toValue = @1;
    animation.duration = 3;
    
    animation.fillMode = kCAFillModeForwards;
    animation.removedOnCompletion = NO;
    
    [self.titleLabel.layer addAnimation:animation forKey:@"basic"];
    [self.deviceImage.layer addAnimation:animation forKey:@"basic"];
    [self.playVisualView.layer addAnimation:animation forKey:@"basic"];*/
    
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
    // NSLog( @"scroll view!!" );
    // NSLog( @"scolll offset y: %f", scrollView.contentOffset.y );
    // NSLog( @"scroll view end!!" );
    
    float offsetY = scrollView.contentOffset.y;
    float offsetX = scrollView.contentOffset.x;
    
    if(offsetY < 0) {
        CGAffineTransform transformFast = CGAffineTransformMakeTranslation( 0, offsetY );
        CGAffineTransform transformMedium = CGAffineTransformMakeTranslation( 0, offsetY /3 );
        CGAffineTransform transformSlow = CGAffineTransformMakeTranslation( 0, offsetY / 5 );
        
        self.heroView.transform = transformFast;
        self.bookView.transform = transformMedium;
        self.titleLabel.transform = transformSlow;
        self.backgroundImg.transform = transformSlow;
    }
    
    // 水平滚动
    if([scrollView isMemberOfClass:[UICollectionView class]]){
        // NSLog(@"uicollection view!!");
        NSLog( @"ui collection view %lu", [self.chapterCollectionView.visibleCells count] );
        for( int i = 0; i < [self.chapterCollectionView.visibleCells count]; i++ ) {
            if( [self.chapterCollectionView.visibleCells[i] isMemberOfClass:[SectionCollectionViewCell class]]) {
                // NSLog(@"collection cell view!!");
                // 获取节点
                NSIndexPath *forIndexPath = [ self.chapterCollectionView indexPathForCell:self.chapterCollectionView.visibleCells[i] ];
                
                // 获取可见卡片的属性
                // UICollectionViewLayoutAttributes *attrs = [self.chapterCollectionView layoutAttributesForItemAtIndexPath: forIndexPath];
                
                // 3d 动画
                SectionCollectionViewCell *cell = self.chapterCollectionView.visibleCells[i];
                CGAffineTransform transform = CGAffineTransformMakeTranslation( offsetX / 5, 0 );
                cell.cellBackImg.transform = transform;
                
                // CGAffineTransform *transform = CGAffineTransformMakeTranslation(<#CGFloat tx#>, <#CGFloat ty#>)
                // cell.layer.transform = CATransform3DRotate( transform, offsetX * 3.14159265 / 180, 0, 1, 0 );
                // break;
            }
        }
    }
}
- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    NSString *reuseIdentifier = @"sectionCell";
    SectionCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    NSDictionary *section = self.dictArray[indexPath.row];
    
    cell.topTitleLabel.text = section[@"title"];
    cell.bottomDescLabel.text = section[@"caption"];
    cell.cellBackImg.image = [UIImage imageNamed:section[@"image"]];
    
    return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.dictArray.count;
}

- (IBAction)closeBtnTappedHandle:(UIButton *)sender {
    NSLog(@"xxx: 11234");
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:@"HomeToSection" sender: indexPath];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqual: @"HomeToSection"] ) {
        SectionViewController *destCont = [segue destinationViewController];
        NSIndexPath *indexPath = (NSIndexPath *)sender;
        // NSDictionary *section = (NSDictionary*)self.dictArray[ indexPath.row ];
        destCont.section = (NSDictionary*)self.dictArray[ indexPath.row ];
        destCont.indexPath = indexPath;
        
        NSLog( @"跳转之前准备!!" );
    }
}
@end
