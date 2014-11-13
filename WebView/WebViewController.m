//
//  WebViewController.m
//  WebView
//
//  Created by Digital 07 on 3/5/2014.
//  Copyright (c) 2014 Digital 07. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (id)initWithURL:(NSURL *)url andTitle:(NSString *)string {
    if( self = [super init] ) {
        theURL = url;
        theTitle = string;
    }
    return self;
}
-(id)initWithURL:(NSURL *)url {
    return [self initWithURL:url andTitle:nil];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    webTitle.title = theTitle;
    NSURLRequest *requestObject = [NSURLRequest requestWithURL:theURL]; [webView loadRequest:requestObject];
}
- (IBAction) done:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    webView.delegate = nil;
    [webView stopLoading];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
