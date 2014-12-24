//
//  SpecificGroupPage.m
//  studdy c
//
//  Created by Aaron Tharpe on 10/26/14.
//  Copyright (c) 2014 Fantastic4. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SpecificGroupPage.h"


@interface SpecificGroupPage ()
@end


@implementation SpecificGroupPage

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    _groupMember1.layer.cornerRadius = 20;
    _groupMember1.clipsToBounds = YES;
    _groupMember2.layer.cornerRadius = 20;
    _groupMember2.clipsToBounds = YES;
    _groupMember3.layer.cornerRadius = 20;
    _groupMember3.clipsToBounds = YES;
    _groupMember4.layer.cornerRadius = 20;
    _groupMember4.clipsToBounds = YES;
    _openSpot.layer.cornerRadius = 20;
    _openSpot.clipsToBounds = YES;
    
    _leaveButton.layer.cornerRadius = 10;
    _leaveButton.clipsToBounds = YES;
    _joinButton.layer.cornerRadius = 10;
    _joinButton.clipsToBounds = YES;
    
    [_tag1.layer setBorderWidth:1.0];
    [_tag1.layer setBorderColor:[[UIColor whiteColor] CGColor]];
    _tag1.layer.cornerRadius = 10;
    _tag1.clipsToBounds = YES;
    
    [_tag2.layer setBorderWidth:1.0];
    [_tag2.layer setBorderColor:[[UIColor whiteColor] CGColor]];
    _tag2.layer.cornerRadius = 10;
    _tag2.clipsToBounds = YES;
    
    [_tag3.layer setBorderWidth:1.0];
    [_tag3.layer setBorderColor:[[UIColor whiteColor] CGColor]];
    _tag3.layer.cornerRadius = 10;
    _tag3.clipsToBounds = YES;
    
    [_tag4.layer setBorderWidth:1.0];
    [_tag4.layer setBorderColor:[[UIColor whiteColor] CGColor]];
    _tag4.layer.cornerRadius = 10;
    _tag4.clipsToBounds = YES;
    
    [_tag5.layer setBorderWidth:1.0];
    [_tag5.layer setBorderColor:[[UIColor whiteColor] CGColor]];
    _tag5.layer.cornerRadius = 10;
    _tag5.clipsToBounds = YES;
    
    [_tag6.layer setBorderWidth:1.0];
    [_tag6.layer setBorderColor:[[UIColor whiteColor] CGColor]];
    _tag6.layer.cornerRadius = 10;
    _tag6.clipsToBounds = YES;

}

- (IBAction)leaveButton:(id)sender{
    [UIView animateWithDuration:0.2 animations:^(void) {
        _leaveButton.alpha = 0;
    }];
    [UIView animateWithDuration:0.2 animations:^(void) {
        _joinButton.alpha = 1;
    }];
    [UIView animateWithDuration:0.2 animations:^(void) {
        _groupMember3.alpha = 0;
    }];
    [UIView animateWithDuration:0.2 animations:^(void) {
        _openSpot.alpha = 1;
    }];
    
    _availableSpots.text = @"2 Spots Available";
    
}

- (IBAction)joinButton:(id)sender{
    [UIView animateWithDuration:0.2 animations:^(void) {
        _leaveButton.alpha = 1;
    }];
    [UIView animateWithDuration:0.2 animations:^(void) {
        _joinButton.alpha = 0;
    }];
    [UIView animateWithDuration:0.2 animations:^(void) {
        _groupMember3.alpha = 1;
    }];
    [UIView animateWithDuration:0.2 animations:^(void) {
        _openSpot.alpha = 0;
    }];
    
    _availableSpots.text = @"1 Spot Available";
    
}

- (UIStatusBarStyle) preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

@end