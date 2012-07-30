//
//  ViewController.h
//  Jul19
//
//  Created by Piyal Basu on 7/26/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
	NSString *text;
}

- (id) initWithText: (NSString *) t
              title: (NSString *) title
    backgroundColor: (UIColor *) backgroundColor
              image: (UIImage *) image
              badge: (NSString *) badge;

@property (nonatomic, copy) IBOutlet NSString *text;

@end
