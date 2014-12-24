//
//  SpecificGroupPage.h
//  studdy c
//
//  Created by Aaron Tharpe on 10/26/14.
//  Copyright (c) 2014 Fantastic4. All rights reserved.
//

#ifndef studdy_c_SpecificGroupPage_h
#define studdy_c_SpecificGroupPage_h

#import <UIKit/UIKit.h>


@interface SpecificGroupPage : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *groupMember1;

@property (weak, nonatomic) IBOutlet UIButton *groupMember2;

@property (weak, nonatomic) IBOutlet UIButton *groupMember3;

@property (weak, nonatomic) IBOutlet UIButton *groupMember4;

@property (weak, nonatomic) IBOutlet UIButton *openSpot;

@property (weak, nonatomic) IBOutlet UIButton *leaveButton;

@property (weak, nonatomic) IBOutlet UIButton *joinButton;

@property (weak, nonatomic) IBOutlet UILabel *availableSpots;

@property (strong, nonatomic) IBOutlet UIButton *tag1;

@property (strong, nonatomic) IBOutlet UIButton *tag2;

@property (strong, nonatomic) IBOutlet UIButton *tag3;

@property (strong, nonatomic) IBOutlet UIButton *tag4;

@property (strong, nonatomic) IBOutlet UIButton *tag5;

@property (strong, nonatomic) IBOutlet UIButton *tag6;

@end


#endif


