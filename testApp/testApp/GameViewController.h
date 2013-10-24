//
//  GameViewController.h
//  testApp
//
//  Created by Adam Crawford on 10/10/13.
//  Copyright (c) 2013 Adam Crawford. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GameViewController : UIViewController
{
	IBOutlet UILabel *homeLabel;
	IBOutlet UILabel *awayLabel;
	IBOutlet UILabel *dateLabel;
	IBOutlet UILabel *timeLabel;
	IBOutlet UILabel *genderLabel;
}

@property NSString *home;
@property NSString *away;
@property NSString *date;
@property NSString *time;
@property NSString *gender;


-(IBAction)onClick:(id)sender;

@end
