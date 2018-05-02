//
//  NavigationController.m
//  23 - PickerView Storyboard
//
//  Created by Vincent Leduc on 18-03-13.
//  Copyright © 2018 Vincent Leduc. All rights reserved.
//

#import "NavigationController.h"

@interface NavigationController ()

@end

@implementation NavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"<%@:%@>", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    NSLog(@"<%@:%@>", NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

-(UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}

-(BOOL)shouldAutorotate {
    return YES;
}


@end
