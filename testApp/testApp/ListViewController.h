//
//  ListViewController.h
//  testApp
//
//  Created by Adam Crawford on 10/10/13.
//  Copyright (c) 2013 Adam Crawford. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListViewController : UITableViewController
{
	NSArray *times;
	NSArray *teams;
	NSArray *genders;
	NSArray *dates;
	IBOutlet UITableView *table;
	
}

@end
