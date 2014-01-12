//
//  AppDelegate.h
//  basket
//
//  Created by xiangshouding on 14-1-12.
//  Copyright (c) 2014年 xiangshouding. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "LoginWindowController.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (strong) LoginWindowController *login;

- (IBAction)onClick:(id)sender;

@end
