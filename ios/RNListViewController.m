//
//  RNListViewController.m
//  RNAndiOSCallEachOther
//
//  Created by changjian on 2018/3/28.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "RNListViewController.h"
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>

@interface RNListViewController ()

@end

@implementation RNListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  //
  NSURL *jsCodeLocation;
  
  jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"movieList.ios" fallbackResource:nil];
  
  RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                      moduleName:@"RNAndiOSCallEachOther"
                                               initialProperties:nil
                                                   launchOptions:nil];
  rootView.backgroundColor = [UIColor whiteColor];
  
  self.view = rootView;

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
