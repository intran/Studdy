//
//  otherPersonPage.h
//  studdy c
//
//  Created by Aaron Tharpe on 10/27/14.
//  Copyright (c) 2014 Fantastic4. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface otherPersonPage : UIViewController

@property (nonatomic, strong) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;
@property (weak, nonatomic) IBOutlet UIImageView *aaron;
@property (strong, nonatomic)          NSArray *titlesArray;

@end
