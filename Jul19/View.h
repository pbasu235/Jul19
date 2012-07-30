//
//  View.h
//  Jul19
//
//  Created by Piyal Basu on 7/26/12.
//  Copyright (c) 2012 Concentric. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;

@interface View: UITextView  {
	ViewController *viewController;
}

- (id) initWithFrame: (CGRect) frame controller: (ViewController *) c;
@end
