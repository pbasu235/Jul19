//
//  ViewController.m
//  Jul19
//
//  Created by Piyal Basu on 7/26/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import "ViewController.h"
#import "View.h"

@implementation ViewController
@synthesize text;

/*
 - (id) initWithNibName: (NSString *) nibNameOrNil bundle: (NSBundle *) nibBundleOrNil
 {
 self = [super initWithNibName: nibNameOrNil bundle: nibBundleOrNil];
 if (self) {
 // Custom initialization
 }
 return self;
 }
 */

- (id) initWithText: (NSString *) t
              title: (NSString *) title
              backgroundColor: (UIColor *) backgroundColor 
              image: (UIImage *) image
              badge: (NSString *) badge {
    
	self = [super initWithNibName: nil bundle: nil];
	if (self != nil) {
		self.title = title;
		self.view.backgroundColor = backgroundColor;
		self.tabBarItem.badgeValue = badge;
        self.tabBarItem.image = image;		
        self.text = t;		//text = [t copy];
	}
	
	return self;
}


- (void) didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void) loadView
{
	CGRect frame = [UIScreen mainScreen].applicationFrame;
	self.view = [[View alloc] initWithFrame: frame controller: self];
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void) viewDidLoad
{
	[super viewDidLoad];
}


- (void) viewDidUnload
{
	[super viewDidUnload];
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

- (BOOL) shouldAutorotateToInterfaceOrientation: (UIInterfaceOrientation) interfaceOrientation
{
	// Return YES for supported orientations
	//return (interfaceOrientation == UIInterfaceOrientationPortrait);
	return YES;
}

@end
