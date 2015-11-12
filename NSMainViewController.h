//
//  NSMainViewController.h
//  PhotoViewer_Web Chalange
//
//  Created by Nik on 10.11.15.
//  Copyright © 2015 Nik. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NSShowController.h"
#import "sendDataFromMainController.h"
#import "NSDataFromMVC.h"

@interface NSMainViewController : UIViewController  <UIImagePickerControllerDelegate,UIGestureRecognizerDelegate>


@property (weak,nonatomic) IBOutlet UIImageView* photo;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *UploadButton;
@property (weak, nonatomic) IBOutlet UISwitch *editMode;
@property (weak, nonatomic)  UIImage *backgroundImage;
@property (strong,nonatomic) NSDataFromMVC* data;
@property (assign,nonatomic) NSInteger counterOfView;
@property (weak,nonatomic) id<sendDataFromMainController> delegate;


- (IBAction)uploadPhoto:(id)sender;
- (IBAction)changeMode:(UISwitch*)sender;


@end
