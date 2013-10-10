//
//  ReportViewController.h
//  testApp
//
//  Created by Adam Crawford on 10/10/13.
//  Copyright (c) 2013 Adam Crawford. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReportViewController : UIViewController
{
	IBOutlet UITextView *incidents;
	IBOutlet UILabel *homeScore;
	IBOutlet UILabel *awayScore;
}

-(IBAction)onChange:(id)sender;
-(IBAction)onClick:(id)sender;

@end
