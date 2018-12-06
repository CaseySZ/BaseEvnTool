//
//  ViewController.m
//  BaseEvnTool
//
//  Created by Casey on 06/12/2018.
//  Copyright © 2018 Casey. All rights reserved.
//

#import "ViewController.h"
#import "BaseEvnTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIView *view = [UIView new];
    view.cy.right = 0;
    
    UIImageView *imageView;
    [imageView loadImageWithURL:nil];
    
    UITableView *tabelveiw;
    tabelveiw.cy_header = [CyRefreshHeaderBaseView headerWithRefreshingBlock:^{
        
    }];
    
    [NetMananger.sharedInstance postJsonNoCacheWithURL:@"" parameters:nil completionHandler:^(NSError * _Nullable error, BOOL isCache, NSDictionary * _Nullable result) {
        
    }];
    
    
    
}


@end
