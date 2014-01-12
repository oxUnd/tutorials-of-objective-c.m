//
//  AppDelegate.h
//  sample01
//
//  Created by xiangshouding on 14-1-12.
//  Copyright (c) 2014年 xiangshouding. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "InfoWindow.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property InfoWindow * infoWindow;
@property (unsafe_unretained) IBOutlet NSTextView *showInformationTextView;

- (IBAction)onOpenAChildWindow:(id)sender;
- (IBAction)onGetInformationFromTheChildWindow:(id)sender;
- (void) updateShowInformationTextView;
@end
