//
//  ViewController.h
//  UnitConverter
//
//  Created by Brian Anglin on 2/18/14.
//  Copyright (c) 2014 Brian Anglin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *convertButton;
@property (weak, nonatomic) IBOutlet UITextField *metersField;
@property (weak, nonatomic) IBOutlet UITextField *feetField;
@property (weak, nonatomic) IBOutlet UIButton *clearButton;

@end
