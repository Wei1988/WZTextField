//
//  CustomTabBarViewController.m
//  WZTextField
//
//  Created by victor zhang on 2/26/16.
//  Copyright © 2016 victor zhang. All rights reserved.
//

#import "CustomTabBarViewController.h"
#import "FirstTabViewController.h"
#import "SecondTabViewController.h"
#import "ThirdTabViewController.h"
#import "FourthTabViewController.h"

@interface CustomTabBarViewController () <UITabBarControllerDelegate>

@end

@implementation CustomTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupTabViewControllers];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

#pragma mark - set up
- (void)setupTabViewControllers {
    NSMutableArray *tabViewControllers = [[NSMutableArray alloc] init];
    // 1. first tab
    FirstTabViewController *firstVC = [[FirstTabViewController alloc] init];
    UINavigationController *firstNav = [[UINavigationController alloc] initWithRootViewController:firstVC];
    firstVC.title = @"HomePage";
    [tabViewControllers addObject:firstNav];
    // 2. second tab
    SecondTabViewController *secondVC = [[SecondTabViewController alloc] init];
    UINavigationController *secondNav = [[UINavigationController alloc] initWithRootViewController:secondVC];
    secondVC.title = @"Promotion";
    [tabViewControllers addObject:secondNav];
    // 3 third tab
    ThirdTabViewController *thirdVC = [[ThirdTabViewController alloc] init];
    UINavigationController *thirdNav = [[UINavigationController alloc] initWithRootViewController:thirdVC];
    thirdVC.title = @"Chat";
    [tabViewControllers addObject:thirdNav];
    // 4. fourth tab
    FourthTabViewController *fourthVC = [[FourthTabViewController alloc] init];
    UINavigationController *fourthNav = [[UINavigationController alloc] initWithRootViewController:fourthVC];
    fourthVC.title = @"MyProfile";
    [tabViewControllers addObject:fourthNav];
    self.viewControllers = tabViewControllers;
    
    
    
    
}


@end
