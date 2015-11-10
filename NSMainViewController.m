//
//  NSMainViewController.m
//  PhotoViewer_Web Chalange
//
//  Created by Nik on 10.11.15.
//  Copyright © 2015 Nik. All rights reserved.
//

#import "NSMainViewController.h"

@implementation NSMainViewController
//@synthesize UploadButton;

- (void)viewDidLoad{
    
    self.counterOfView = 0;
    
}
#pragma mark - Actions
- (IBAction)uploadPhoto:(id)sender {
    
    if (self.editMode.on == YES) {
        UIImagePickerController * picker = [[UIImagePickerController alloc] init];
        picker.delegate = self;
        picker.sourceType =  UIImagePickerControllerSourceTypePhotoLibrary;
        [self presentModalViewController:picker animated:YES];
        
    }else{
        
        NSShowController* vc = [self.storyboard instantiateViewControllerWithIdentifier:@"NSShowController"];
        [self.navigationController pushViewController:vc animated:YES];
    }
   
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self logTouches:touches withMethod:@"touchesBegan"];
    
 
}
- (void) logTouches:(NSSet*)touches withMethod:(NSString*) methodName {
    
    NSMutableString* string = [NSMutableString stringWithString:methodName];
    
    for (UITouch* touch in touches) {
        CGPoint point = [touch locationInView:self.view];
        [string appendFormat:@" %@", NSStringFromCGPoint(point)];
        if (self.counterOfView < 3  ) {
            CGRect rect = CGRectMake(point.x, point.y, 20, 20);
            UIView* view = [[UIView alloc]initWithFrame:rect];
            view.backgroundColor = [UIColor greenColor];
            [self.view addSubview:view];
            self.counterOfView ++;
        }
        
    }
    
    NSLog(@"%@", string);
    
}



- (IBAction)changeMode:(UISwitch*)sender {
    
    self.editMode = sender;
    
    if ( self.editMode.on == NO){
        
        self.UploadButton.title = @"Show Result";
    }else {
        
        self.UploadButton.title = @"Upload photo";
        
    }
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(nullable NSDictionary<NSString *,id> *)editingInfo{
    
    
    [picker dismissModalViewControllerAnimated:YES];

    self.photo.image = image;
    
}
@end
