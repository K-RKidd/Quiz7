//
//  Quiz7DetailViewController.m
//  Quiz7c
//
//  Created by Krystle on 4/7/14.
//  Copyright (c) 2014 Krystle Kidd. All rights reserved.
//

#import "Quiz7DetailViewController.h"
#import "Task.h"

@interface Quiz7DetailViewController ()
- (void)configureView;
@end

@implementation Quiz7DetailViewController
@synthesize dismissBlock;
@synthesize task;

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
        
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        slider.maximumValue = 10;
        slider.minimumValue =0;
        [nameField setText:[_detailItem name]];
        [datePicker setDate:[_detailItem dueDate] animated:YES];
        [slider setValue:[_detailItem urgency]];
        int urgencyInteger = (int)(task.urgency);
        [sliderValue setText:[NSString stringWithFormat:@ "%u", urgencyInteger]];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    nameField.delegate = self;
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderChange:(id)sender {
    int urgencyInteger = (int)(slider.value);
    [sliderValue setText:[NSString stringWithFormat:@ "%u", urgencyInteger]];
    

}


-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}
-(void)viewWillDisappear:(BOOL)animated {
    
    [[self view] endEditing:YES];
    
    [super viewWillDisappear:animated];
    [_detailItem setUrgency: [[sliderValue text ]intValue]];
    [_detailItem setName:[nameField text]];
    [_detailItem setDueDate:[datePicker date]];
    
}


@end
