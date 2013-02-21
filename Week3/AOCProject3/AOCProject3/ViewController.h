//
//  ViewController.h
//  AOCProject3
//
//  Created by Dale Tupling on 2/20/13.
//  Copyright (c) 2013 Dale Tupling. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (int)Add:(NSInteger)int1 int2:(NSInteger)int2;
- (BOOL)Compare: (NSInteger)compareMyAge compareWifesAge:(NSInteger)compareWifesAge;
- (NSString *)Append:(NSString *)appendNSStringOne appendNSStringTwo:(NSString *)appendNSStringTwo;
- (void)DisplayAlertWithString:(NSString *)alertString alertTitle:(NSString *)alertTitle;
- (int)sum;



@end
