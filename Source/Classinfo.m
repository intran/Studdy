//
//  classinfo.m
//  studdy c
//
//  Created by Aaron Tharpe on 10/26/14.
//  Copyright (c) 2014 Fantastic4. All rights reserved.
//

#define Rgb2UIColor(r, g, b)  [UIColor colorWithRed:((r) / 255.0) green:((g) / 255.0) blue:((b) / 255.0) alpha:1.0]
#import "Classinfo.h"

@interface Classinfo ()

@end


@implementation Classinfo
{
    NSArray *tableData;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString* plistPath = [[NSBundle mainBundle] pathForResource:@"TestData" ofType:@"plist"];
    NSDictionary * values=[[NSDictionary alloc] initWithContentsOfFile:plistPath];
    tableData=[[NSArray alloc] initWithArray:[values valueForKey:@"Infopage"]];
    NSLog(@"arrayValues = %@",tableData);
    
    [_viewGroupsButton.layer setBorderWidth:1.0];
    [_viewGroupsButton.layer setBorderColor:[[UIColor whiteColor] CGColor]];
    _viewGroupsButton.layer.cornerRadius = 10;
    _viewGroupsButton.clipsToBounds = YES;
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
    [bgColorView setBackgroundColor:Rgb2UIColor(245, 204, 34)];
    [cell setSelectedBackgroundView:bgColorView];
    cell.textColor = [UIColor whiteColor];
    [self.tableView setBackgroundColor:[UIColor clearColor]];
}

- (UIStatusBarStyle) preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}



@end