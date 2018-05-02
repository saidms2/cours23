//
//  NumbersAndAnimalsViewController.m
//  23 - PickerView Storyboard
//
//  Created by Vincent Leduc on 18-03-18.
//  Copyright © 2018 Vincent Leduc. All rights reserved.
//

#import "NumbersAndAnimalsViewController.h"


@interface NumbersAndAnimalsViewController ()

@end

@implementation NumbersAndAnimalsViewController

@synthesize monAnimauxPickerViewDelegate;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setMonAnimauxPickerViewDelegate: [[AnimauxPickerViewDelegate alloc] init]];
    [[self animauxPickerView] setDataSource:monAnimauxPickerViewDelegate];
    [[self animauxPickerView] setDelegate:monAnimauxPickerViewDelegate];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
