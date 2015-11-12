//
//  NSPhotoController.h
//  PhotoViewer_Web Chalange
//
//  Created by Nik on 10.11.15.
//  Copyright © 2015 Nik. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "sendDataFromMainController.h"
#import "NSDataFromMVC.h"
@interface NSPhotoController : UIViewController <sendDataFromMainController>
@property (weak, nonatomic) IBOutlet UIImageView *background;
@property (strong, nonatomic) UIImage *imageBackground;

@end
