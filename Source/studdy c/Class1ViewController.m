//
//  Class1ViewController.m
//  studdy c
//
//  Created by Aaron Tharpe on 10/14/14.
//  Copyright (c) 2014 Fantastic4. All rights reserved.
//

#define Rgb2UIColor(r, g, b)  [UIColor colorWithRed:((r) / 255.0) green:((g) / 255.0) blue:((b) / 255.0) alpha:1.0]

#import "Class1ViewController.h"
@interface Class1ViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation Class1ViewController
{
    NSArray *tableData;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSString* plistPath = [[NSBundle mainBundle] pathForResource:@"TestData" ofType:@"plist"];
    NSDictionary * values=[[NSDictionary alloc] initWithContentsOfFile:plistPath];
    tableData=[[NSArray alloc] initWithArray:[values valueForKey:@"class1"]];
    NSLog(@"arrayValues = %@",tableData);
    
    _titlesArray  = @[@"Time Created", @"Distance",
                      @"Members"];
    
    [_moreInfo.layer setBorderWidth:1.0];
    [_moreInfo.layer setBorderColor:[[UIColor whiteColor] CGColor]];
    _moreInfo.layer.cornerRadius = 10;
    _moreInfo.clipsToBounds = YES;
    
    [_createGroup.layer setBorderWidth:1.0];
    [_createGroup.layer setBorderColor:[[UIColor whiteColor] CGColor]];
    _createGroup.layer.cornerRadius = 10;
    _createGroup.clipsToBounds = YES;
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
    return 3;
    
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
        tView.numberOfLines=3;
    }
    tView.text=[_titlesArray objectAtIndex:row];
    return tView;
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
    [bgColorView setBackgroundColor:Rgb2UIColor(65, 165, 245)];
    [cell setSelectedBackgroundView:bgColorView];
    cell.textColor = [UIColor whiteColor];
    [self.tableView setBackgroundColor:[UIColor clearColor]];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIStoryboard *storyboard = self.storyboard;
    Class1ViewController *svc = [storyboard instantiateViewControllerWithIdentifier:@"SpecificGroupPage"];
    
    // Configure the new view controller here.
    
    [self presentViewController:svc animated:YES completion:nil];
}

- (IBAction)createGroup:(id)sender{
        UIStoryboard *storyboard = self.storyboard;
        Class1ViewController *svc = [storyboard instantiateViewControllerWithIdentifier:@"CreatePage"];
        
        // Configure the new view controller here.
        
        [self presentViewController:svc animated:YES completion:nil];
    
    [UIView animateWithDuration:7 animations:^(void) {
        _createdGroup.alpha = 1;
    }];
}

- (IBAction)home:(id)sender{
    UIStoryboard *storyboard = self.storyboard;
    Class1ViewController *svc = [storyboard instantiateViewControllerWithIdentifier:@"FirstViewController"];
    
    // Configure the new view controller here.
    
    [self presentViewController:svc animated:YES completion:nil];
}

- (UIStatusBarStyle) preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

/*
- (NSString *)addSpacing:(NSInteger *)spacing1 andSpacing:(NSInteger *)spacing2 {
    NSString *spacingString;
    NSLog(@"%d %d", spacing1, spacing2);
    
    
    return spacingString;
}*/


@end
