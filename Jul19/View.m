//
//  View.m
//  Jul19
//
//  Created by Piyal Basu on 7/26/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import "View.h"
#import "ViewController.h"

@implementation View

/*
 - (id) initWithFrame: (CGRect) frame
 {
 self = [super initWithFrame: frame];
 if (self) {
 // Initialization code
 }
 return self;
 }
 */

- (id) initWithFrame: (CGRect) frame controller: (ViewController *) c {
	self = [super initWithFrame: frame];
	if (self) {
		// Initialization code
		self.backgroundColor = [UIColor yellowColor];
		self.editable = NO;	//Don't pop up a keyboard.
		self.font = [UIFont fontWithName: @"Verdana" size: 12]; //monospace
		viewController = c;
	}
	return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void) drawRect: (CGRect) rect
{
	// Drawing code
	self.text = [viewController.text stringByAppendingString: @"\n\n"];
    CGFloat w = self.bounds.size.width;
    CGFloat h = self.bounds.size.height;
    // Drawing code
    
    UIImage *splash = [UIImage imageNamed: @"city.png"];	//100 by 100

    CGPoint point = CGPointMake(
                                (w - splash.size.width) / 2,
                                h - splash.size.height -20
                                );
    
    [splash drawAtPoint: point];
	}


@end
