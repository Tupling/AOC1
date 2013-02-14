//
//  ViewController.m
//  AOCBook
//
//  Created by Dale Tupling on 2/14/13.
//  Copyright (c) 2013 Dale Tupling. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Set background color
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    //Book Title Label
    bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 300.0f, 45.0f)];
    if (bookTitle != nil) {
        
        bookTitle.backgroundColor = [UIColor blackColor];
        bookTitle.text = @"The Hobbit";
        bookTitle.textColor = [UIColor whiteColor];
        bookTitle.textAlignment = NSTextAlignmentCenter;
    }
    
    [self.view addSubview:bookTitle];
    
    
    //Author Label with right justified Text
    bookAuthor = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 65.0f, 100.0f, 25.0f)];
    if (bookAuthor != nil) {
        
        bookAuthor.backgroundColor = [UIColor darkGrayColor];
        bookAuthor.text = @"Author:";
        bookAuthor.textColor = [UIColor redColor];
        bookAuthor.textAlignment = NSTextAlignmentRight;
    }
    
    [self.view addSubview:bookAuthor];
    
    
    //Name of Author left justified text
    authorName = [[UILabel alloc] initWithFrame:CGRectMake(110.0f, 65.0f, 200.0f, 25.0f)];
    if (authorName != nil) {
        
        authorName.backgroundColor = [UIColor colorWithRed:0.8 green:0.8 blue:0.6 alpha:1]; /*#cccc99*/
        authorName.text = @"J. R. R. Tolkien";
        authorName.textColor = [UIColor colorWithRed:0 green:0.024 blue:0.4 alpha:1]; /*#000666*/
        authorName.textAlignment = NSTextAlignmentLeft;
    }
    
    [self.view addSubview:authorName];
    
    //Published Text
    publishedText = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 105.0f, 100.0f, 25.0f)];
    if (publishedText != nil){
        
        publishedText.backgroundColor = [UIColor colorWithRed:1 green:0.988 blue:0.8 alpha:1]; /*#fffccc*/
        publishedText.text = @"Published:";
        publishedText.textColor = [UIColor colorWithRed:0.6 green:0.6 blue:0.4 alpha:1]; /*#999966*/
        publishedText.textAlignment = NSTextAlignmentRight;
    }

    [self.view addSubview:publishedText];

    //Date Published
    datePublished = [[UILabel alloc] initWithFrame:CGRectMake(110.0f, 105.0f, 200.0f, 25.0f)];
    if (datePublished != nil){
        
        datePublished.backgroundColor = [UIColor colorWithRed:1 green:0.4 blue:0 alpha:1]; /*#ff6600*/
        datePublished.text = @"1937";
        datePublished.textColor = [UIColor colorWithRed:1 green:0.8 blue:0 alpha:1]; /*#ffcc00*/
        datePublished.textAlignment = NSTextAlignmentLeft;
    }

    [self.view addSubview:datePublished];

    //Story Summary Header
    summaryHead = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 140.0f, 100.0f, 25.0f)];
    if (summaryHead !=nil){
    
        summaryHead.backgroundColor = [UIColor colorWithRed:0 green:0.2 blue:0.4 alpha:1]; /*#003366*/
        summaryHead.text = @"Summary:";
        summaryHead.textColor = [UIColor colorWithRed:0.2 green:0.8 blue:1 alpha:1]; /*#33ccff*/
        summaryHead.textAlignment = NSTextAlignmentRight;
    }

    [self.view addSubview:summaryHead];

    //Summary of Story
    summary = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 175.0f, 300.0f, 150.0f)];
    if (summary != nil){
    
        summary.backgroundColor = [UIColor colorWithRed:0.8 green:1 blue:1 alpha:1]; /*#ccffff*/
        summary.text = @"The book is about a Hobbit known as Bilbo. Bilbo is convinced by a wizard named Gandoff to go on a expedition to the Lonely Mountain in search for a secret door, in an attempt to steal an item of great meaning.";
        summary.textColor = [UIColor colorWithRed:0.2 green:0.6 blue:0.8 alpha:1]; /*#3399cc*/
        summary.textAlignment = NSTextAlignmentCenter;
        summary.numberOfLines = 10;
    }

    [self.view addSubview:summary];

    //Character Types Header
    charTypeHead = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 335.0f, 100.0f, 25.0f)];
    if (charTypeHead != nil){
    
        charTypeHead.backgroundColor = [UIColor colorWithRed:0.2 green:0 blue:0.4 alpha:1]; /*#330066*/
        charTypeHead.text = @"List of Items";
        charTypeHead.textColor = [UIColor colorWithRed:0.8 green:0 blue:1 alpha:1]; /*#cc00ff*/
        charTypeHead.textAlignment = NSTextAlignmentLeft;
        
    }

    [self.view addSubview:charTypeHead];







    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
