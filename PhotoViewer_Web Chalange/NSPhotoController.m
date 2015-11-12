//
//  NSPhotoController.m
//  PhotoViewer_Web Chalange
//
//  Created by Nik on 10.11.15.
//  Copyright © 2015 Nik. All rights reserved.
//

#import "NSPhotoController.h"

@implementation NSPhotoController


- (void) sendBackground:(UIImage *)image{
    
    self.imageBackground = image;
}
- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.background.image = self.imageBackground;
 }
@end
