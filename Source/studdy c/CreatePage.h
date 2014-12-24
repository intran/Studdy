//
//  CreatePage.h
//  studdy c
//
//  Created by Aaron Tharpe on 10/24/14.
//  Copyright (c) 2014 Fantastic4. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreatePage : UIViewController

@property (strong, nonatomic)          NSArray *titlesArray;

@property (strong, nonatomic) IBOutlet UIButton *tag1;

@property (strong, nonatomic) IBOutlet UIButton *tag2;

@property (strong, nonatomic) IBOutlet UIButton *tag3;

@property (strong, nonatomic) IBOutlet UIButton *tag4;

@property (strong, nonatomic) IBOutlet UIButton *tag5;

@property (strong, nonatomic) IBOutlet UIButton *tag6;

@property (strong, nonatomic) IBOutlet UIButton *addTag;

@property (strong, nonatomic) IBOutlet UIButton *createGroup;

@property (strong, nonatomic) IBOutlet UITextField *location;

@property (strong, nonatomic) IBOutlet UITextField *time;

@property (strong, nonatomic) IBOutlet UITextField *date;

@property (strong, nonatomic) IBOutlet UITextField *numPeople;

@property (strong, nonatomic) IBOutlet UILabel *error;

@end
