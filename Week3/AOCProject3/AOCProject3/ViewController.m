//
//  ViewController.m
//  AOCProject3
//
//  Created by Dale Tupling on 2/20/13.
//  Copyright (c) 2013 Dale Tupling. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController




- (void)viewDidLoad
{

    
    //Add function Call 
    int sum = [self Add:25 int2:6];
    
    
    //Append String Call
    NSString *stringAlert = [self Append:@"Macbook" stringTwo:@" Pro"];
    [self DisplayAlertWithString:stringAlert alertTitle:@"Appended Strings Alert"];

    
    
    //Convert Int to String Call
    NSNumber *intToNum = [NSNumber numberWithInt:sum];
    NSString *numToString = [intToNum stringValue];
    NSString *addResults = [self Append:@"The number is " stringTwo:numToString];
    [self DisplayAlertWithString:addResults alertTitle:@"Add Function Alert"];

    
    
    //Comparison Call
    NSInteger myAge = 25;
    NSInteger wifesAge = 24;
    BOOL compareAges = [self Compare:myAge compareWifesAge:wifesAge];
    
    if (compareAges == YES)
    {
        NSString *compareString = [NSString stringWithFormat:@"My age is %i, my wifes age is %i. Are we the same age? %@", myAge, wifesAge, compareAges? @"YES" : @"NO"];
        [self DisplayAlertWithString:compareString alertTitle:@"Age Comparison Alert"];
    } else if (compareAges == NO) {
        NSString *compareString = [NSString stringWithFormat:@"My age is %i, my wifes age is %i. Are we the same age? %@", myAge, wifesAge, compareAges? @"YES" : @"NO"];
        [self DisplayAlertWithString:compareString alertTitle:@"Age Comparison Alert"];
    }
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


    //Add function return results
    - (int)Add:(NSInteger)int1 int2:(NSInteger)int2
    {
        return int1 + int2;
    }


    //String appending function return appended string
    - (NSString *)Append:(NSString *)stringOne stringTwo:(NSString *)stringTwo
    {
        NSMutableString *appendString = [[NSMutableString alloc]initWithString:stringOne];
        [appendString appendString:stringTwo];
        return appendString;
    }


    //BOOL comparison function return comparison results
    - (BOOL)Compare:(NSInteger)compareMyAge compareWifesAge:(NSInteger)compareWifesAge
    {
        return (compareMyAge == compareWifesAge);
    }


    //Alert display function return alerts
    - (void)DisplayAlertWithString:(NSString *)alertString alertTitle:(NSString *)alertTitle
    {
        UIAlertView *displayAlert = [[UIAlertView alloc] initWithTitle:alertTitle message:alertString delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil];
        if (displayAlert != nil)
        {
            [displayAlert show];
        }
    }


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
