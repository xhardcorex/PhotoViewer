//
//  sendDataFromMainController.h
//  PhotoViewer_Web Chalange
//
//  Created by Nik on 10.11.15.
//  Copyright © 2015 Nik. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDataFromMVC.h"

@protocol sendDataFromMainController <NSObject>

- (void) sendData:(NSDataFromMVC*) data;
- (void) sendBackground:(UIImage*) image;
@end
