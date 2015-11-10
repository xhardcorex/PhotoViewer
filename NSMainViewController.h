//
//  NSMainViewController.h
//  PhotoViewer_Web Chalange
//
//  Created by Nik on 10.11.15.
//  Copyright © 2015 Nik. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSMainViewController : UIViewController  <UIImagePickerControllerDelegate>


@property (weak,nonatomic) IBOutlet UIImageView* photo;


- (IBAction)uploadPhoto:(id)sender;

@end
