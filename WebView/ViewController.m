//
//  ViewController.m
//  WebView
//
//  Created by Digital 07 on 3/5/2014.
//  Copyright (c) 2014 Digital 07. All rights reserved.
//

#import "ViewController.h"
#import "WebViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushedGo:(id)sender {
    NSURL *url = [NSURL URLWithString:@"http://www.mylambton.ca/"];
    WebViewController *webViewController =
    [[WebViewController alloc] initWithURL:url andTitle:@"LambtonCollege"];
    [self presentViewController:webViewController animated:YES completion:nil];
}
@end
