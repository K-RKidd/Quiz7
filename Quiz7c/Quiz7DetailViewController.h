//
//  Quiz7DetailViewController.h
//  Quiz7c
//
//  Created by Krystle on 4/7/14.
//  Copyright (c) 2014 Krystle Kidd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Task.h"

@interface Quiz7DetailViewController : UIViewController <UITextFieldDelegate>{
    
    __weak IBOutlet UISlider *slider;
    __weak IBOutlet UILabel *sliderValue;
    __weak IBOutlet UIDatePicker *datePicker;
    __weak IBOutlet UITextField *nameField;
}



@property (strong, nonatomic) id detailItem;

- (IBAction)sliderChange:(id)sender;

@property (nonatomic, copy) void (^dismissBlock)(void);
@property (nonatomic)Task *task;

@end
