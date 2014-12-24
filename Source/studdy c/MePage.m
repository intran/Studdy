//
//  MePage.m
//  studdy c
//
//  Created by Aaron Tharpe on 10/24/14.
//  Copyright (c) 2014 Fantastic4. All rights reserved.
//

#define Rgb2UIColor(r, g, b)  [UIColor colorWithRed:((r) / 255.0) green:((g) / 255.0) blue:((b) / 255.0) alpha:1.0]

#import "MePage.h"
#import "DismissSegue.h"
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface MePage ()

@end

@implementation MePage
{
    NSMutableArray *tableData;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString* plistPath = [[NSBundle mainBundle] pathForResource:@"TestData" ofType:@"plist"];
    NSDictionary * values=[[NSDictionary alloc] initWithContentsOfFile:plistPath];
    tableData=[[NSMutableArray alloc] initWithArray:[values valueForKey:@"ClassHistory"]];
    
    
    _button1.layer.cornerRadius = 20;
    _button1.clipsToBounds = YES;
    [_button1.layer setBorderWidth:1.0];
    [_button1.layer setBorderColor:[[UIColor whiteColor] CGColor]];
    _button2.layer.cornerRadius = 20;
    _button2.clipsToBounds = YES;
    [_button2.layer setBorderWidth:1.0];
    [_button2.layer setBorderColor:[[UIColor whiteColor] CGColor]];
    _button3.layer.cornerRadius = 20;
    _button3.clipsToBounds = YES;
    [_button3.layer setBorderWidth:1.0];
    [_button3.layer setBorderColor:[[UIColor whiteColor] CGColor]];
    _button4.layer.cornerRadius = 20;
    _button4.clipsToBounds = YES;
    [_button4.layer setBorderWidth:1.0];
    [_button4.layer setBorderColor:[[UIColor whiteColor] CGColor]];
    [_aaron.layer setBorderWidth:1.0];
    [_aaron.layer setBorderColor:[[UIColor whiteColor] CGColor]];
    _aaron.layer.cornerRadius = 20;
    _aaron.clipsToBounds = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    // Return the number of rows in the section.
    // Usually the number of items in your array (the one that holds your list)
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //Where we configure the cell in each row
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell;
    
    cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    // Configure the cell... setting the text of our cell's label
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    cell.backgroundColor = [UIColor clearColor];
    UIView *bgColorView = [[UIView alloc] init];
    [bgColorView setBackgroundColor:Rgb2UIColor(210, 46, 46)];
    [cell setSelectedBackgroundView:bgColorView];
    cell.textColor = [UIColor whiteColor];
    [self.tableView setBackgroundColor:[UIColor clearColor]];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIStoryboard *storyboard = self.storyboard;
}


- (UIStatusBarStyle) preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}
    
    @end