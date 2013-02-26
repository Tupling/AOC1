//
//  ViewController.m
//  AOCProject4
//
//  Created by Dale Tupling on 2/25/13.
//  Copyright (c) 2013 Dale Tupling. All rights reserved.
//

#import "ViewController.h"

#define BUTTON_LOGIN 0
#define BUTTON_DATE 1
#define BUTTON_INFO 2

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    
    //UILabel for UserName
    UILabel *userName = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 15.0f, 90.0f, 20.0f)];
    
    if (userName != nil){
        
        userName.text = @"Username:";
        [self.view addSubview:userName];
    }
    
    
    //UITextField for Username input
    userNameField = [[UITextField alloc] initWithFrame:CGRectMake(100.0f, 10.0f, 200.0f, 30.0f)];
    
    if (userNameField != nil){
        
        userNameField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:userNameField];
    }
    
    //Login Button
    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    if (loginBtn != nil){
        
        loginBtn.frame = CGRectMake(220.0f, 50.0f, 80.0f, 30.0f);
        loginBtn.tag = BUTTON_LOGIN;
        loginBtn.tintColor = [UIColor colorWithRed:0.961 green:0.608 blue:0 alpha:1]; /*#f59b00*/
        [loginBtn setTitle:@"Login" forState:UIControlStateNormal];
        [loginBtn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:loginBtn];
    }
    
    //Display User login status label
    loginStatus = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 100.0f, 340.0f, 80.0f)];
    loginStatus.backgroundColor = [UIColor grayColor];
    
    if (loginStatus !=nil){
        
        loginStatus.text=@" Please Enter Username";
        loginStatus.textColor = [UIColor whiteColor];
        loginStatus.textAlignment = NSTextAlignmentCenter;
        loginStatus.numberOfLines = 2;
        
        [self.view addSubview:loginStatus];
    }
    
    //Show Date Button
    UIButton *showDate = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    if (showDate !=nil){
        
        showDate.frame = CGRectMake(10.0f, 195.0f, 90.0f, 45.0f);
        showDate.tag = BUTTON_DATE;
        showDate.tintColor = [UIColor colorWithRed:0.557 green:0 blue:0 alpha:1]; /*#8e0000*/
        [showDate setTitle:@"Show Date" forState:UIControlStateNormal];
        [showDate addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:showDate];
    }
    
    //More info. Button
    UIButton *moreInfo = [UIButton buttonWithType:UIButtonTypeInfoDark];
    
    if (moreInfo != nil){
        
        moreInfo.frame = CGRectMake(10.0f, 350.0f, 25.0f, 25.0f);
        moreInfo.tag = BUTTON_INFO;
        [moreInfo addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:moreInfo];
         
    }
    
    [super viewDidLoad];
    
    //Tap screen to make keyboard disappear
    UITapGestureRecognizer *tapOnScreen = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(keyboardDisappear)];
    
    //set to NO, so not all touches are cancelled. If set to YES User will not be able to touch ShowDate or Info Buttons
    tapOnScreen.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:tapOnScreen];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

//onClick Function
-(void)onClick:(UIButton*)button{
        
    if(button.tag == BUTTON_LOGIN){
            
            NSString *userInput = [userNameField text];
        
            if(userInput.length == 0){
                
                    NSString *noInput = [NSString stringWithFormat:@" Username cannot be empty"];
                    loginStatus.text= noInput;
            }else{
                    NSString *userLogged = [NSString stringWithFormat:@" User: %@ has been logged in", userInput];
                    loginStatus.text = userLogged;
            }
        
    }else if(button.tag == BUTTON_DATE){
        
            //Date Object NSDate
            NSDate *currentDate = [NSDate date];
            NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
        
            if(dateFormat !=nil){
                //Set Date Format
                [dateFormat setDateStyle:NSDateFormatterLongStyle];
                [dateFormat setTimeStyle:NSDateFormatterFullStyle];
        
            }
        
            //Place Date objext into string
            NSString *todaysDate = [dateFormat stringFromDate:currentDate];
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Date" message:todaysDate delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        
            if(alertView != nil){
                
                [alertView show];
            }
        
    }else if(button.tag == BUTTON_INFO){
            
            //More Info Display
            infoDisplay = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 380.0f, 320.0f, 50.0f)];
            infoDisplay.backgroundColor = [UIColor lightGrayColor];
            
            if (infoDisplay != nil){
                
                infoDisplay.text = @"This application was created by Dale Tupling";
                infoDisplay.numberOfLines = 2;
                
                [self.view addSubview:infoDisplay];
            }
            
    }
    
}

//Function for Gesture tapOnScreen
- (void) keyboardDisappear {
    
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
