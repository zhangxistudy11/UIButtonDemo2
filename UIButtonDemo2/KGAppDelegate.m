//
//  KGAppDelegate.m
//  UIButtonDemo2
//
//  Created by KG on 15/6/10.
//  Copyright (c) 2015年 KG. All rights reserved.
//

#import "KGAppDelegate.h"

@implementation KGAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(10, 50, 300, 50);
    //设置按钮显示的标题
    
    [button setTitle:@"我是一个按钮,可以点击" forState:UIControlStateNormal];
    //因为按钮是一个事件驱动型的控件,所以需要去绑定一个事件
    
    
    //一个按钮可以绑定多个事件
    //多个按钮也可以绑定同一个事件响应的方法
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchDown];
    
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchDragInside];
    
    
    UIButton * button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    button2.frame = CGRectMake(10, 200, 300, 50);
    //最后一个参数表示此刻按钮的状态，
    [button2 setTitle:@"OK" forState:UIControlStateNormal];
    //最后一个参数表示当按钮做什么操作时，执行该方法
    [button2 addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:button2];
    
    
    
    [self.window addSubview:button];
    
    [self.window makeKeyAndVisible];
    return YES;
}

-(void)buttonClick:(UIButton *)btn
{
    NSLog(@"按钮被点击%@",btn.currentTitle);
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
