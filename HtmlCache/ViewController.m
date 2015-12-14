//
//  ViewController.m
//  HtmlCache
//
//  Created by niuniu on 15/8/26.
//  Copyright (c) 2015年 niuniu. All rights reserved.
//

#import "ViewController.h"
#import "HtmlCache.h"
@interface ViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *contentView;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    HtmlCache *urlCache = [[HtmlCache alloc] initWithMemoryCapacity:20 * 1024 * 1024
                                                       diskCapacity:200 * 1024 * 1024
                                                           diskPath:nil
                                                          cacheTime:0];
    [HtmlCache setSharedURLCache:urlCache];
    self.contentView.delegate = self;
    [self.contentView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://beta.touch.laiyifen.cn/wap/index.html?"]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    HtmlCache *urlCache = (HtmlCache *)[NSURLCache sharedURLCache];
    [urlCache removeAllCachedResponses];
}
#pragma mark - webview

- (void)webViewDidFinishLoad:(UIWebView *)webView {
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
    
}
@end
