//
//  CouleursPickerViewDelegate.m
//  23 - PickerView Storyboard
//
//  Created by Vincent Leduc on 18-03-14.
//  Copyright © 2018 Vincent Leduc. All rights reserved.
//

#import "CouleursPickerViewDelegate.h"

@implementation CouleursPickerViewDelegate

@synthesize couleurs;
@synthesize alphas;

-(instancetype)init {
    if(self = [super init]) {
        [self setCouleurs:@[@"Rouge", @"Vert", @"Bleu"]];
        [self setAlphas:@[@"Alpha",@"Beta",@"Gamma"]];
    }
    return self;
}


-(NSInteger)numberOfComponentsInPickerView:(UIPickerView*)pickerView {
    return 2;
}

-(NSInteger)pickerView:(UIPickerView*)pickerView numberOfRowsInComponent:(NSInteger)component {
    return component == 0 ? [[self couleurs] count] :
            [[self alphas] count];
}

-(NSString*)pickerView:(UIPickerView*)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return component == 0 ? [[self couleurs] objectAtIndex:row] :
            [[self alphas] objectAtIndex:row];
}

-(void)pickerView:(UIPickerView*)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    NSLog(@"%@ %@", @"Sélection de l'élément :", [self pickerView:pickerView titleForRow:row forComponent:component]);
}

@end
