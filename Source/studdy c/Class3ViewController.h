//
//  Class3ViewController.h
//  studdy c
//
//  Created by Aaron Tharpe on 10/14/14.
//  Copyright (c) 2014 Fantastic4. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Class3ViewController : UIViewController <UIPickerViewDataSource,UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet UILabel *color;

@property (strong, nonatomic) IBOutlet UIPickerView *picker;

@property (strong, nonatomic)          NSArray *titlesArray;

@property (nonatomic, strong) IBOutlet UITableView *tableView;

@property (strong, nonatomic) IBOutlet UIButton *createGroup;

@property (strong, nonatomic) NSArray *content;

@end

