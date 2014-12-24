//
//  LoginScreen.h
//  studdy c
//
//  Created by Aaron Tharpe on 10/23/14.
//  Copyright (c) 2014 Fantastic4. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginScreen : UIViewController <UITextFieldDelegate>


@property (strong, nonatomic) IBOutlet UITextField* usernameField;

@property (strong, nonatomic) IBOutlet UITextField* passField;

@property (strong, nonatomic) IBOutlet UIButton *loginButton;

@property (strong, nonatomic) IBOutlet UIButton *backgroundButton;

@property (strong, nonatomic) IBOutlet UILabel *passwordError;

@end