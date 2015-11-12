//
//  NSDataFromMVC.h
//  PhotoViewer_Web Chalange
//
//  Created by Nik on 10.11.15.
//  Copyright © 2015 Nik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSDataFromMVC : NSObject
@property (strong,nonatomic) NSMutableArray* arrayWithPhoto;
@property (strong,nonatomic) NSMutableArray* arrayViews;
@property (weak, nonatomic)  UIImage *backgroundImage;
@end
