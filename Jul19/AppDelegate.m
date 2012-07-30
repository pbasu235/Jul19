//
//  AppDelegate.m
//  Jul19
//
//  Created by Piyal Basu on 7/25/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import "AppDelegate.h"
#include "ViewController.h"


@implementation AppDelegate

@synthesize window = _window;


- (BOOL) application: (UIApplication *) application didFinishLaunchingWithOptions: (NSDictionary *) launchOptions
{
	self.window = [[UIWindow alloc] initWithFrame: [UIScreen mainScreen].bounds];
	// Override point for customization after application launch.
	UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
	tabBarController.viewControllers = [NSArray arrayWithObjects:
                                        
                                        [[ViewController alloc]
                                         initWithText: @"Welcome to Piyal's guide to the best of New York City!"	
                                         title: @"Home"
                                         backgroundColor: [UIColor redColor]
                                         image: [UIImage imageNamed: @"178-city.png"]
                                         badge: nil
                                         ],
                                        
                                        [[ViewController alloc]
                                         initWithText: @"For my money, nothing beats the freezer section at a place called 7-11. They're hard to find, but there's a few around the city if you keep your eyes open!"
                                         title: @"Ice Cream"
                                         backgroundColor: [UIColor yellowColor]
                                         image: [UIImage imageNamed: @"147-popsicle.png"]
                                         badge: nil
                                         ],
                                        
                                        [[ViewController alloc]
                                         initWithText: @"Love comedy? Check out a channel called Comedy Central! A television station with nothing but comedy? Only in New York!"
                                         title: @"Entertainment"
                                        backgroundColor: [UIColor greenColor]
                                         image: [UIImage imageNamed: @"66-microphone.png"]
                                         badge: nil
                                         ],
                                        
                                        [[ViewController alloc]
                                         initWithText: @"Check out the G train for a scenic tour of subterranean New York, from Queens all the way to Brooklyn!"
                                         title: @"Sight Seeing"
                                        backgroundColor: [UIColor blueColor]
                                         image: [UIImage imageNamed: @"64-zap.png"]
                                         badge: nil
                                         ],
                                        
                                
                                        
                                        nil
                                        ];
    
	tabBarController.selectedIndex = 0;	//0 (the leftmost one) is the default
	self.window.rootViewController = tabBarController;
	[self.window makeKeyAndVisible];
	return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
