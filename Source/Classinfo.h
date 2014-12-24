//
//  classinfo.h
//  studdy c
//
//  Created by Aaron Tharpe on 10/26/14.
//  Copyright (c) 2014 Fantastic4. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Classinfo : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *color;

@property (strong, nonatomic) IBOutlet UIButton *viewGroupsButton;

@property (strong, nonatomic) NSArray *titlesArray;

@property (nonatomic, strong) IBOutlet UITableView *tableView;

@property (strong, nonatomic) NSArray *content;

@end