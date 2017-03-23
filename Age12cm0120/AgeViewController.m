//
//  AgeViewController.m
//  Age12cm0120
//
//  Created by 騎 胡 on 12/05/18.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "AgeViewController.h"

@interface AgeViewController ()

@end

@implementation AgeViewController
@synthesize birthdayPicker;
@synthesize ageLable;
@synthesize resultLable;
@synthesize unitControl;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    birthdayPicker.date = [NSDate date];
    
    [self calc];
}

- (void)viewDidUnload
{
    [self setBirthdayPicker:nil];
    [self setAgeLable:nil];
    [self setResultLable:nil];
    [self setUnitControl:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)calc {
    NSDate *birthday =birthdayPicker.date;
    NSDate *today = [NSDate date];
    NSCalendar *gregorian = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSGregorianCalendar];
    
    
    NSUInteger unitFlags;    
    switch (unitControl.selectedSegmentIndex) {
        case 0:
            unitFlags = NSYearCalendarUnit;
            break;
        case 1:
            unitFlags = NSMonthCalendarUnit;
            break;
        case 2:
            unitFlags = NSDayCalendarUnit;
            break;
            
            
    }
    
    NSDateComponents *componets =
    [gregorian components:unitFlags
                 fromDate:birthday
                   toDate:today
                  options:0];
    NSUInteger age;
    switch (unitFlags)
    {
        case NSYearCalendarUnit:
            age = [componets year];
            break;
            
        case NSMonthCalendarUnit:
            age = [componets month];
            break;
        case NSDayCalendarUnit:
            age = [componets day];
            break;
            
    }
    resultLable.text = [NSString stringWithFormat:@"%d",age];
}
@end
