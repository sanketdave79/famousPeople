//
//  famouspeopleByShakeViewController.m
//  famousPeople
//
//  Created by sanket on 18/01/2014.
//  Copyright (c) 2014 Techmentation. All rights reserved.
//

#import "famouspeopleByShakeViewController.h"

@interface famouspeopleByShakeViewController () {
    NSTimer *timer;
}

@end

@implementation famouspeopleByShakeViewController

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
//    self.testLabel.text = @"Shake";
    
    
//    timer = [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(acivateChangeProfileByShake:) userInfo:nil repeats:NO];

}


- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake)
    {
        [self changeProfile];
    }
}


- (IBAction)acivateChangeProfileByShake:(id)sender {
    
    [self changeProfile];
    [timer invalidate];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
