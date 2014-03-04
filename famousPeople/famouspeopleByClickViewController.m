//
//  famouspeopleByClickViewController.m
//  famousPeople
//
//  Created by sanket on 18/01/2014.
//  Copyright (c) 2014 Techmentation. All rights reserved.
//

#import "famouspeopleByClickViewController.h"

@interface famouspeopleByClickViewController ()

@end

@implementation famouspeopleByClickViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    
//    self.title = namesArray[index];
    
}


- (IBAction)acivateChangeProfileByClick:(id)sender {
//    self.title = namesArray[index];

    [self changeProfile];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
