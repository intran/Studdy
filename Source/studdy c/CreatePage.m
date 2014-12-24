//
//  CreatePage.m
//  studdy c
//
//  Created by Aaron Tharpe on 10/24/14.
//  Copyright (c) 2014 Fantastic4. All rights reserved.
//

#import "CreatePage.h"
#import "Class1ViewController.h"

#define purple2Color [UIColor colorWithRed:((r) / 125.0) green:((g) / 90.0) blue:((b) / 191.0) alpha:1.0]

@interface CreatePage ()

@end

@implementation CreatePage

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _titlesArray  = @[@"CSCI 4800", @"CSCI 2670",
                      @"BIOL 1108", @"GEOG 1111"];
    
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
    
    [_addTag.layer setBorderWidth:1.0];
    //[_addTag.layer setBorderColor:[Rgb2UIColor(125, 90, 191)] CGColor];
    [_addTag.layer setBorderColor:[[UIColor greenColor] CGColor]];
    _addTag.layer.cornerRadius = 10;
    _addTag.clipsToBounds = YES;
    
    [_createGroup.layer setBorderWidth:1.0];
    [_createGroup.layer setBorderColor:[[UIColor whiteColor] CGColor]];
    _createGroup.layer.cornerRadius = 10;
    _createGroup.clipsToBounds = YES;
    
    _error.layer.cornerRadius = 10;
    _error.clipsToBounds = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
    
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent: (NSInteger)component
{
    return 4;
    
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row   forComponent:(NSInteger)component
{
    return [self.titlesArray objectAtIndex:row];
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    UILabel* tView = (UILabel*)view;
    if (!tView)
    {
        tView = [[UILabel alloc] init];
        [tView setFont:[UIFont fontWithName:@"Helvetica Neue" size:24]];
        [tView setTextColor:[UIColor whiteColor]];
        tView.textAlignment = NSTextAlignmentCenter;
        tView.numberOfLines=4;
    }
    tView.text=[_titlesArray objectAtIndex:row];
    return tView;
}

- (IBAction)checkInButtonPushed
{
    self.tag1.enabled = NO;
    self.tag1.selected = YES;
    self.tag1.highlighted = YES;
    
}

- (IBAction)checkInButtonPushed1
{
    self.tag2.enabled = NO;
    self.tag2.selected = YES;
    self.tag2.highlighted = YES;
    
}

- (IBAction)checkInButtonPushed2
{
    self.tag3.enabled = NO;
    self.tag3.selected = YES;
    self.tag3.highlighted = YES;
    
}

- (IBAction)checkInButtonPushed3
{
    self.tag4.enabled = NO;
    self.tag4.selected = YES;
    self.tag4.highlighted = YES;
    
}

- (IBAction)checkInButtonPushed4
{
    self.tag5.enabled = NO;
    self.tag5.selected = YES;
    self.tag5.highlighted = YES;
    
}

- (IBAction)checkInButtonPushed5
{
    self.tag6.enabled = NO;
    self.tag6.selected = YES;
    self.tag6.highlighted = YES;
    
}

- (IBAction)createPage:(id)sender{
    
    NSInteger numPeopleInt = [_numPeople.text intValue];
    NSLog(@"numPeopleInt = %ld", (long)numPeopleInt);
    
    if (_location.text.length > 0 && _time.text.length > 0 && _date.text.length > 0 && _numPeople.text.length >0){
        
        if ([_time.text containsString:@":"]){
            
            if ([_date.text containsString:@"/"]){
                
                if (numPeopleInt > 0){
                    [self dismissModalViewControllerAnimated:YES];
                } else {
                    _error.text = @"Please Enter Valid Number";
                    [UIView animateWithDuration:0.2 animations:^(void) {
                        _error.alpha = 1;
                    }];
                }
                
            } else {
                _error.text = @"Please Enter Valid Date. Ex: 10/28/14";
                [UIView animateWithDuration:0.2 animations:^(void) {
                    _error.alpha = 1;
                }];
            }
            
        } else {
            _error.text = @"Please Enter Valid Time. Ex: 12:30PM";
            [UIView animateWithDuration:0.2 animations:^(void) {
                _error.alpha = 1;
            }];
        }
        
    } else {
        _error.text = @"Please Fill in All Required Fields";
        [UIView animateWithDuration:0.2 animations:^(void) {
            _error.alpha = 1;
        }];
    }
}



- (UIStatusBarStyle) preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

@end

