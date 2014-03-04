//
//  famouspeopleViewController.m
//  famousPeople
//
//  Created by sanket on 18/01/2014.
//  Copyright (c) 2014 Techmentation. All rights reserved.
//




#import "famouspeopleViewController.h"
#import "famouspeopleProfileObject.h"

@interface famouspeopleViewController () {
    NSMutableDictionary *categories;
    
    NSArray *politicians, *sportsmen;
    BOOL isPoliticiansEnabled;
    
    NSArray *categoryStatusArray;
    
    
    
}

@end

@implementation famouspeopleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    categories = [NSMutableDictionary dictionary];
    
    NSLog(@"fsdfsd");
    
    
    
//    famouspeopleProfileObject *profile = [[famouspeopleProfileObject alloc] init];
//    [profile setName:@"OCG"];
//    [profile setCountry:@"Turkey"];
//    
//    famouspeopleProfileObject *profile1 = [[famouspeopleProfileObject alloc] init];
//    [profile1 setName:@"Sanket"];
//    [profile1 setCountry:@"india"];

    
    
    NSMutableArray * profileArr = [NSMutableArray array];
    
    
    for (int i = 0; i < 10; i++) {
        
        famouspeopleProfileObject *profile2 = [[famouspeopleProfileObject alloc] init];
        [profile2 setName:[NSString stringWithFormat:@"Sanket :%d",i + 1]];
        [profile2 setCountry:@"india"];
        
        [profileArr addObject:profile2];
    }
    
    
    
    for (famouspeopleProfileObject *profile1 in profileArr) {
        NSLog(@"name : %@", profile1.name);
    }
    
    
//    NSArray *arr = [NSArray arrayWithObjects:profile, profile1, nil];
//    
//    NSLog(@"name of the 1st person : %@",[ (famouspeopleProfileObject *)arr[0] name]);
//    
//    NSLog(@"name of the 2nd person : %@",[ (famouspeopleProfileObject *)arr[1] name]);

    
    categoryStatusArray = [NSArray arrayWithObjects:@"0", @"1", nil];
    
    NSArray *categoryNames= [NSArray arrayWithObjects:@"Politicians", @"Sports", nil];

    
    
    
    
    
    namesArray = [NSMutableArray arrayWithObjects:@"Gandhi", @"Priya Rai", @"Sunny Leon", nil];
    countryArray = [NSMutableArray arrayWithObjects:@"India", @"Gujorat", @"USA", nil];
    ageArray = [NSMutableArray arrayWithObjects:@"50", @"40", @"30", nil];
    imageNamesArray = [NSMutableArray arrayWithObjects: @"gandhi.png",  @"rai.png", @"sunny.png", nil];

    descriptionArray = [NSMutableArray arrayWithObjects:@"fdsfsdfdsfsdfdssd", @"bahhhhhhhh", @"ohhhhhh helllllllll yeahhhhhhh", nil];
    politicians = [NSArray arrayWithObjects:namesArray, countryArray, ageArray, imageNamesArray, descriptionArray, nil];
    
    
    if ([categoryStatusArray[0] isEqualToString:@"1"]) {
        [categories setObject:politicians forKey:@"Politicians"];
    }
    
    
    
    
    
    
    
    
    namesArray = [NSMutableArray arrayWithObjects:@"Jordan", @"Ronaldo", @"Messi", nil];
    countryArray = [NSMutableArray arrayWithObjects:@"India", @"Gujorat", @"USA", nil];
    ageArray = [NSMutableArray arrayWithObjects:@"50", @"40", @"30", nil];
    imageNamesArray = [NSMutableArray arrayWithObjects:@"gandhi.png", @"rai.png", @"sunny.png", nil];
    descriptionArray = [NSMutableArray arrayWithObjects:@"fdsfsdfdsfsdfdssd", @"bahhhhhhhh", @"ohhhhhh helllllllll yeahhhhhhh", nil];
    
    sportsmen = [NSArray arrayWithObjects:namesArray, countryArray, ageArray, imageNamesArray, descriptionArray, nil];
    
    if ([categoryStatusArray[1] isEqualToString:@"1"]) {
        [categories setObject:sportsmen forKey:@"Sports"];
    }
    
    

    
    
    
    
    
    
    NSLog(@"category count  :  %lu", (unsigned long)[categories count]);

    
    
    
    
    
    
//    [categories removeObjectForKey:@"Politicians"];

    
    
    
//    self.imageView.image = [UIImage imageNamed:imageNamesArray[2]];
    
    index = 0;
    
    [self changeProfile];
}




- (void) changeProfile {

        self.imageView.image = [UIImage imageNamed: imageNamesArray[index] ];
        self.countryLabel.text = [NSString stringWithFormat:@"Country: %@", countryArray[index]];
        self.ageLabel.text =  [NSString stringWithFormat:@"Age: %@", ageArray[index]];
        self.descriptionTextView.text = descriptionArray[index];
        self.title = namesArray[index];
        index++;
        
        if (index>namesArray.count-1) {
            index = 0;
        }
  
}






- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
