//
//  NSMainViewController.m
//  PhotoViewer_Web Chalange
//
//  Created by Nik on 10.11.15.
//  Copyright © 2015 Nik. All rights reserved.
//

#import "NSMainViewController.h"

@implementation NSMainViewController

- (IBAction)uploadPhoto:(id)sender {
    UIImagePickerController * picker = [[UIImagePickerController alloc] init];
    
    picker.delegate = self;
    

    
    
    [self presentModalViewController:picker animated:YES];
    
}
@end
