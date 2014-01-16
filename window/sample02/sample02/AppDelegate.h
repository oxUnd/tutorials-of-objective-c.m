//
//  AppDelegate.h
//  sample02
//
//  Created by xiangshouding on 14-1-16.
//  Copyright (c) 2014 zz. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

//colorBar
@property (weak) IBOutlet NSColorWell *colorBar1;
@property (weak) IBOutlet NSColorWell *colorBar2;
@property (weak) IBOutlet NSColorWell *colorBar3;
//text
@property (weak) IBOutlet NSTextField *text1;
@property (weak) IBOutlet NSTextField *text2;
@property (weak) IBOutlet NSTextField *text3;

- (IBAction)onSelColorBar1:(id)sender;
- (IBAction)onSelColorBar2:(id)sender;
- (IBAction)onSelColorBar3:(id)sender;

- (NSString *) rgbToHex: (NSColor *) color;
@end