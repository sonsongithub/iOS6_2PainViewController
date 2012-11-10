//
//  BrowserViewController.m
//  embedViewTest
//
//  Created by sonson on 2012/11/10.
//  Copyright (c) 2012年 sonson. All rights reserved.
//

#import "BrowserViewController.h"

@interface BrowserViewController ()

@end

@implementation BrowserViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(received:) name:@"PostURL" object:nil];
}

- (void)received:(NSNotification*)notification {
	NSDictionary *userInfo = [notification userInfo];
	NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:[userInfo objectForKey:@"URL"]]];
	[self.webView loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
