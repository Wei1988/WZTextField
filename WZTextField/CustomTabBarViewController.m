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
    UIImage *unselectedImage = [UIImage imageNamed:@"Star-grey.png"];
    unselectedImage = [unselectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *selectedImage = [UIImage imageNamed:@"Star-red.png"];
    selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    // 1. first tab
    FirstTabViewController *firstVC = [[FirstTabViewController alloc] init];
    UINavigationController *firstNav = [[UINavigationController alloc] initWithRootViewController:firstVC];
    firstVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"HomePage" image:unselectedImage selectedImage:selectedImage];
    [tabViewControllers addObject:firstNav];
    // 2. second tab
    SecondTabViewController *secondVC = [[SecondTabViewController alloc] init];
    UINavigationController *secondNav = [[UINavigationController alloc] initWithRootViewController:secondVC];
    secondVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Promotion" image:unselectedImage selectedImage:selectedImage];
    [tabViewControllers addObject:secondNav];
    // 3 third tab
    ThirdTabViewController *thirdVC = [[ThirdTabViewController alloc] init];
    UINavigationController *thirdNav = [[UINavigationController alloc] initWithRootViewController:thirdVC];
    thirdVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Chat" image:unselectedImage selectedImage:selectedImage];
    [tabViewControllers addObject:thirdNav];
    // 4. fourth tab
    FourthTabViewController *fourthVC = [[FourthTabViewController alloc] init];
    UINavigationController *fourthNav = [[UINavigationController alloc] initWithRootViewController:fourthVC];
    fourthVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"MyProfile" image:unselectedImage selectedImage:selectedImage];
    [tabViewControllers addObject:fourthNav];
    self.viewControllers = tabViewControllers;
    
    
    
    
}


@end
