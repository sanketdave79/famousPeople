//
//  famouspeopleViewController.h
//  famousPeople
//
//  Created by sanket on 18/01/2014.
//  Copyright (c) 2014 Techmentation. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface famouspeopleViewController : UIViewController {
    NSString *stringTest;
    
    NSMutableArray *namesArray, *countryArray, *ageArray, *imageNamesArray, *descriptionArray;
    
    int index;

}

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *countryLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextView;

- (void) changeProfile;

@end
