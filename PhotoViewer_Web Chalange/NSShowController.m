//
//  NSShowController.m
//  PhotoViewer_Web Chalange
//
//  Created by Nik on 10.11.15.
//  Copyright © 2015 Nik. All rights reserved.
//

#import "NSShowController.h"

@interface NSShowController ()
@end

@implementation NSShowController

- (void) sendData:(NSDataFromMVC *)data{
    
    NSLog(@"delegate");
    self.data = data;
     
    
}
- (void) loadPhoto{

    NSPhotoController* pc = [self.storyboard instantiateViewControllerWithIdentifier:@"NSPhotoController"];
    self.delegate = pc;
    
    if (self.count == 1) {
        [self.delegate sendBackground:[self.data.arrayWithPhoto objectAtIndex:self.count ]];
        [self.navigationController pushViewController:pc animated:YES];
        self.count++;

    }else if(self.count == 2){
        [self.delegate sendBackground:[self.data.arrayWithPhoto objectAtIndex:self.count ]];
        [self.navigationController pushViewController:pc animated:YES];
self.count++;
        self.count = 0;
        
    }else if (self.count == 0){
        
        [self.delegate sendBackground:[self.data.arrayWithPhoto objectAtIndex:self.count ]];
        [self.navigationController pushViewController:pc animated:YES];
        self.count++;
    }
  }

- (void)viewDidLoad {
    [super viewDidLoad];
    self.count = 0;
    // Do any additional setup after loading the view.
    
    if (self.data.backgroundImage ) {
        NSLog(@"YES");
    }else{
        NSLog(@"NO");
        
    }
    
    NSLog(@"count:%d",[self.data.arrayViews count]);
    
    self.background.image = self.data.backgroundImage;
    
    for (UIView* view in self.data.arrayViews) {
        view.backgroundColor = [UIColor greenColor];
        UITapGestureRecognizer* gr = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(loadPhoto)];
        [view addGestureRecognizer:gr];
        [self.view addSubview:view];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
