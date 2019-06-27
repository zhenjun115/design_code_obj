//
//  AppDelegate.h
//  DesignCodeApp
//
//  Created by zhenjun on 2019/6/27.
//  Copyright © 2019 zhenjun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

