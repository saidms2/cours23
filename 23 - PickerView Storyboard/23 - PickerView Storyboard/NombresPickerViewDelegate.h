//
//  NombresPickerViewDelegate.h
//  23 - PickerView Storyboard
//
//  Created by Vincent Leduc on 18-03-14.
//  Copyright © 2018 Vincent Leduc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NombresPickerViewDelegate : NSObject <UIPickerViewDelegate, UIPickerViewDataSource>

@property (strong, nonatomic) NSArray* nombres;

@end
