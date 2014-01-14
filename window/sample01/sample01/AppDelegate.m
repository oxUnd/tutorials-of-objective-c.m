//
//  AppDelegate.m
//  sample01
//
//  Created by xiangshouding on 14-1-12.
//  Copyright (c) 2014年 xiangshouding. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize infoWindow;
@synthesize showInformationTextView;
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateShowInformationTextView) name:@"updateShowInformationTextView" object:Nil];
    [_window setReleasedWhenClosed:NO];
}

- (IBAction)onOpenAChildWindow:(id)sender {
    if (infoWindow == Nil) {
        infoWindow = [[InfoWindow alloc] initWithWindowNibName:@"InfoWindow"];
    }

    [infoWindow showWindow:self];
}

- (IBAction)onGetInformationFromTheChildWindow:(id)sender {
    [self updateShowInformationTextView];
}

- (void) updateShowInformationTextView {
    if (infoWindow != Nil) {
        [showInformationTextView setString: [infoWindow information]];
    }
}

- (BOOL)applicationShouldHandleReopen:(NSApplication *)sender hasVisibleWindows:(BOOL) flag {
    [_window setIsVisible:YES];
    return YES;
}

@end
