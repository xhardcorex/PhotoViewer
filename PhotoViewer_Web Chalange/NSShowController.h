//
//  NSShowController.h
//  PhotoViewer_Web Chalange
//
//  Created by Nik on 10.11.15.
//  Copyright © 2015 Nik. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "sendDataFromMainController.h"
#import "NSDataFromMVC.h"
#import "NSPhotoController.h"
@interface NSShowController : UIViewController <sendDataFromMainController,UIImagePickerControllerDelegate,UIGestureRecognizerDelegate>

@property (strong,nonatomic) NSDataFromMVC* data;
@property (weak, nonatomic) IBOutlet UIImageView *background;
@property (weak,nonatomic) id<sendDataFromMainController> delegate;
@property (weak,nonatomic) UIView* viewBack;
@property (assign,nonatomic) NSInteger count;

@end
