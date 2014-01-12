//
//  InfoWindow.m
//  sample01
//
//  Created by xiangshouding on 14-1-12.
//  Copyright (c) 2014年 xiangshouding. All rights reserved.
//

#import "InfoWindow.h"

@interface InfoWindow ()

@end

@implementation InfoWindow
@synthesize information;
@synthesize informationInput;

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (IBAction)onSubmitAndClose:(id)sender {
    [self setInformation: [informationInput stringValue]];
    [informationInput setStringValue:@""];
    //[[NSNotificationCenter defaultCenter] postNotificationName:@"updateShowInformationTextView" object:Nil];
    [self close];
}

@end
