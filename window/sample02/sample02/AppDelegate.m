//
//  AppDelegate.m
//  sample02
//
//  Created by xiangshouding on 14-1-16.
//  Copyright (c) 2014 zz. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate {
@private
    __unsafe_unretained NSWindow *_window;
    __weak NSColorWell *_colorBar1;
    __weak NSColorWell *_colorBar2;
    __weak NSColorWell *_colorBar3;
    __weak NSTextField *_text1;
    __weak NSTextField *_text2;
    __weak NSTextField *_text3;
}

@synthesize window = _window;
@synthesize colorBar1 = _colorBar1;
@synthesize colorBar2 = _colorBar2;
@synthesize colorBar3 = _colorBar3;
@synthesize text1 = _text1;
@synthesize text2 = _text2;
@synthesize text3 = _text3;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application

}

- (NSString *) rgbToHex: (NSColor*) color {
    NSString *hexColor = [NSString stringWithFormat:@"#%02X%02X%02X",
                                                    (int) ([color redComponent] * 0xFF),
                                                    (int) ([color greenComponent] * 0xFF),
                                                    (int) ([color blueComponent] * 0xFF)
    ];
    return hexColor;
}

- (IBAction)onSelColorBar1:(id)sender {
    [_text1 setStringValue: [self rgbToHex: [sender color]]];
}

- (IBAction)onSelColorBar2:(id)sender {
    [_text2 setStringValue: [self rgbToHex: [sender color]]];
}

- (IBAction)onSelColorBar3:(id)sender {
    [_text3 setStringValue: [self rgbToHex: [sender color]]];
}
@end