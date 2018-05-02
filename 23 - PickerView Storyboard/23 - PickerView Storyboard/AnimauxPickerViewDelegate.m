//
//  AnimauxPickerViewDelegate.m
//  23 - PickerView Storyboard
//
//  Created by Vincent Leduc on 18-03-14.
//  Copyright © 2018 Vincent Leduc. All rights reserved.
//

#import "AnimauxPickerViewDelegate.h"

@implementation AnimauxPickerViewDelegate

@synthesize animaux;

-(instancetype)init {
    if(self = [super init]) {
        [self setAnimaux:@[@"Lion",@"Tigre", @"Élephant"]];
    }
    return self;
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView*)pickerView {
    return 1;
}

-(NSInteger)pickerView:(UIPickerView*)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [[self animaux] count];
}

-(NSString*)pickerView:(UIPickerView*)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [[self animaux] objectAtIndex:row];
}

-(void)pickerView:(UIPickerView*)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    NSLog(@"%@ %@", @"Sélection de l'élément :", [[self animaux] objectAtIndex:row]);
}

@end
