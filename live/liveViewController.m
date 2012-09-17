//
//  liveViewController.m
//  live
//
//  Created by Wilson on 01/09/12.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "liveViewController.h"

@interface liveViewController ()

@end

@implementation liveViewController

- (void)viewDidLoad {
    NSString *urlAddress = @"http://www.google.com.sg";
    
    //Create a URL object.
    NSURL *url = [NSURL URLWithString:urlAddress];
    
    //URL Requst Object
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    
    //Load the request in the UIWebView.
    [webView loadRequest:requestObj];
}



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
