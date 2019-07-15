//
//  Data.m
//  DesignCodeApp
//
//  Created by zhenjun on 2019/7/14.
//  Copyright © 2019 zhenjun. All rights reserved.
//

#import "Data.h"

@implementation Data
-(id)init{
    self.dictArray = @[
                       @{
                        @"title": @"Designing for iPhone X",
                        @"caption": @"Guidelines to designing for iOS 11",
                        @"body": @"iOS 11 marks the introduction of the iPhone X, a much taller iPhone that has virtually no bezel. The 5.8-inch OLED screen is larger than the iPhone 8 Plus’s 5.5-inch, yet the body size is about the same as the iPhone 8. For designers, this means more freedom in our canvas.",
                        @"image": @"ios11-iphone-x"
                       },
                       @{
                        @"title": @"Design for iPad",
                        @"caption": @"How bigger screens affect your design",
                        @"body": @"Designing for the iPad isn’t as simple as flipping a switch and just making everything bigger. A larger screen provides a real opportunity to present more content while respecting some basic rules in navigation, typography and visual hierarchy. Don’t treat the iPad as just a big iPhone. Instead, treat it more like a desktop computer with touch capabilities. In other words, your users can be more productive, see more content and perform tasks faster like typing, and drag-and-drop and multi-tasking.",
                        @"image": @"ios11-ipad"
                       },
                       @{
                        @"title": @"Design for Apple Watch",
                        @"caption": @"Designing for people on the go",
                        @"body": @"Apple Watch was introduced on April 24, 2015, and it was highly anticipated by developers, designers, and the media. It was truly the first wearable that broke every expectation, placing Apple as the number one watch manufacturer in the world.",
                        @"image": @"ios11-watch"
                        },
                       @{
                        @"title": @"Learn Colors",
                        @"caption": @"How to work with colors",
                        @"body": @"Colors are difficult to master because it’s really easy to go overboard. When we design, we have a tendency to over-design. For colors, we tend to use competing colors that distract and just feels completely unnatural. What I can recommend is to simply stick to the basics and temper your use of colors by focusing on its utility and pleasantness. When in doubt, use colors only to draw attention to a button or element of importance.",
                        @"image": @"ios11-colors"
                        }
                       ];
    return [super init];
}
@end
