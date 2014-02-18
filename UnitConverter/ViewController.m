//
//  ViewController.m
//  UnitConverter
//
//  Created by Brian Anglin on 2/18/14.
//  Copyright (c) 2014 Brian Anglin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)clearFields:(id)sender {
    _metersField.text = @"";
    _feetField.text = @"";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _metersField.keyboardType = UIKeyboardTypeDecimalPad;
    _feetField.keyboardType = UIKeyboardTypeDecimalPad;
}
- (IBAction)makeConvert:(id)sender {

    
    if (_metersField.text.length != 0  ){//meters is present
         NSLog(@"Meters is present");
        float meters = [_metersField.text doubleValue];
        float feet = meters/0.3048;
        _feetField.text = [[NSNumber numberWithFloat:feet] stringValue];
    }else{
        NSLog(@"Meters is not present");
        if(_feetField.text.length == 0 ){ //Neither are present
            NSLog(@"Neiter is  present");
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle: @"Warning" message: @"You must enter feet or meters for the app to convert." delegate: nil cancelButtonTitle:@"OK" otherButtonTitles:nil]; [alert show];
            [alert show];
        }else //Feet is present
        {
            NSLog(@"Feet is present");
            float feet = [_metersField.text doubleValue];
            float meters = feet*0.3048;
             meters = .3323;
            _metersField.text = [[NSNumber numberWithFloat:meters] stringValue];        }
    }
    
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [_metersField resignFirstResponder];
    [_feetField resignFirstResponder];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
