//
//  CellViewController.m
//  testApp
//
//  Created by Adam Crawford on 10/17/13.
//  Copyright (c) 2013 Adam Crawford. All rights reserved.
//

#import "CellViewController.h"

@implementation CellViewController

@synthesize home, away, date, time, gender;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
