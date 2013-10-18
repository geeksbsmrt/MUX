//
//  CellViewController.h
//  testApp
//
//  Created by Adam Crawford on 10/17/13.
//  Copyright (c) 2013 Adam Crawford. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CellViewController : UITableViewCell

@property (nonatomic) IBOutlet UILabel *home;
@property (nonatomic) IBOutlet UILabel *away;
@property (nonatomic) IBOutlet UILabel *date;
@property (nonatomic) IBOutlet UILabel *time;
@property (nonatomic) IBOutlet UILabel *gender;

@end
