//
//  LoginScreen.m
//  studdy c
//
//  Created by Aaron Tharpe on 10/23/14.
//  Copyright (c) 2014 Fantastic4. All rights reserved.
//

#import "LoginScreen.h"
#import "FirstViewController.h"

@interface LoginScreen ()

@end

@implementation LoginScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    _passwordError.layer.cornerRadius = 10;
    _passwordError.clipsToBounds = YES;
    _loginButton.layer.cornerRadius = 5;
    _loginButton.clipsToBounds = YES;
    _backgroundButton.layer.cornerRadius = 5;
    _backgroundButton.clipsToBounds = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == _usernameField && [_usernameField.text isEqualToString:@"Hello"]) {
        _passField.text = @"World";
    }
    return YES;
}

- (IBAction)loginButton:(id)sender{
    if ([_usernameField.text containsString:@"@"] && [_usernameField.text containsString:@".edu"] && [_passField.text isEqualToString:@"password"]) {
        NSLog(@"Got it");
        
        _passwordError.text = @"Success";
        
        
        UIStoryboard *storyboard = self.storyboard;
        FirstViewController *svc = [storyboard instantiateViewControllerWithIdentifier:@"FirstViewController"];
        
        // Configure the new view controller here.
        
        [self presentViewController:svc animated:YES completion:nil];
        
        
    } else {
        NSLog(@"Nope");
        _passwordError.text = @"Password incorrect. Please try again!";
        [UIView animateWithDuration:0.2 animations:^(void) {
            _passwordError.alpha = 1;
        }];
    }
}

- (IBAction)registerButton:(id)sender{

    if((_usernameField.text && _usernameField.text.length > 0) && [_usernameField.text containsString:@"@"] && [_usernameField.text containsString:@".edu"] && (_passField.text && _passField.text.length > 0)){
        
        [UIView animateWithDuration:0.2 animations:^(void) {
            _loginButton.alpha = 0;
        }];
    }
    
    

}

- (UIStatusBarStyle) preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

@end
