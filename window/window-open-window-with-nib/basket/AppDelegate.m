//
//  AppDelegate.m
//  basket
//
//  Created by xiangshouding on 14-1-12.
//  Copyright (c) 2014年 xiangshouding. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize login;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)onClick:(id)sender {
    if (login == Nil) {
        login = [[LoginWindowController alloc] initWithWindowNibName:@"LoginWindowController"];
    }
    NSLog(@"%@", [login window]);
    [login showWindow: nil];
}

@end
