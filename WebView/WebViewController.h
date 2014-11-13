//
//  WebViewController.h
//  WebView
//
//  Created by Digital 07 on 3/5/2014.
//  Copyright (c) 2014 Digital 07. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController <UIWebViewDelegate> {
    NSURL *theURL;
    NSString *theTitle;
    IBOutlet UIWebView *webView;
    IBOutlet UINavigationItem *webTitle;
}
- (id)initWithURL:(NSURL *)url;
- (id)initWithURL:(NSURL *)url andTitle:(NSString *)string;
- (IBAction) done:(id)sender;

@end
