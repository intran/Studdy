//
//  dismissSegue.m
//  studdy c
//
//  Created by Aaron Tharpe on 10/20/14.
//  Copyright (c) 2014 Fantastic4. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DismissSegue.h"

@implementation DismissSegue

- (void)perform {
    UIViewController *sourceViewController = self.sourceViewController;
    [sourceViewController.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

@end