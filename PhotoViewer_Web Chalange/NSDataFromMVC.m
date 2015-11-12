//
//  NSDataFromMVC.m
//  PhotoViewer_Web Chalange
//
//  Created by Nik on 10.11.15.
//  Copyright © 2015 Nik. All rights reserved.
//

#import "NSDataFromMVC.h"

@implementation NSDataFromMVC
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.arrayViews = [NSMutableArray array];
        self.arrayWithPhoto = [NSMutableArray array];
    }
    return self;
}
@end
