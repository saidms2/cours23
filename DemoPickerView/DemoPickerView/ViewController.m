//
//  ViewController.m
//  DemoPickerView
//
//  Created by Vincent Leduc on 18-03-09.
//  Copyright © 2018 Vincent Leduc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize liste;
@synthesize lePickerView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    liste = [[NSMutableArray alloc] init];
    [[self liste] addObject:@"Un"];
    [[self liste] addObject:@"Deux"];
    [[self liste] addObject:@"Trois"];
    [[self liste] addObject:@"Quatres"];
    
    [[self lePickerView] setDataSource:self];
    [[self lePickerView] setDelegate:self];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}


- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [[self liste] count];
}

- (NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [[self liste] objectAtIndex:row];
}

- (void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSLog(@"Sélection de l'élément:%@", [[self liste] objectAtIndex:row]);
}

@end
