//
//  NombresPickerViewDelegate.m
//  23 - PickerView Storyboard
//
//  Created by Vincent Leduc on 18-03-14.
//  Copyright © 2018 Vincent Leduc. All rights reserved.
//

#import "NombresPickerViewDelegate.h"

@implementation NombresPickerViewDelegate

@synthesize nombres;

-(instancetype)init {
    if(self = [super init]) {
        [self setNombres:@[@"Un", @"Deux", @"Trois", @"Quatres"]];
    }
    return self;
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView*)pickerView {
    return 1;
}

-(NSInteger)pickerView:(UIPickerView*)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [[self nombres] count];
}

-(NSString*)pickerView:(UIPickerView*)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [[self nombres] objectAtIndex:row];
}

-(void)pickerView:(UIPickerView*)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    NSLog(@"%@ %@", @"Sélection de l'élément :", [[self nombres] objectAtIndex:row]);
}

@end
