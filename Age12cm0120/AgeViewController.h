//
//  AgeViewController.h
//  Age12cm0120
//
//  Created by 騎 胡 on 12/05/18.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AgeViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIDatePicker *birthdayPicker;
@property (strong, nonatomic) IBOutlet UILabel *ageLable;
@property (strong, nonatomic) IBOutlet UILabel *resultLable;
@property (strong, nonatomic) IBOutlet UISegmentedControl *unitControl;
- (IBAction)calc;

@end
