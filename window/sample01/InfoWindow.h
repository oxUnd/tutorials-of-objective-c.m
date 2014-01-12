//
//  InfoWindow.h
//  sample01
//
//  Created by xiangshouding on 14-1-12.
//  Copyright (c) 2014年 xiangshouding. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface InfoWindow : NSWindowController
@property (weak) IBOutlet NSTextField *informationInput;
@property (nonatomic) NSString * information;

- (IBAction)onSubmitAndClose:(id)sender;

@end
