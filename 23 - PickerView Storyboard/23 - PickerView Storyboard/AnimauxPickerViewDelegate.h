//
//  AnimauxPickerViewDelegate.h
//  23 - PickerView Storyboard
//
//  Created by Vincent Leduc on 18-03-14.
//  Copyright © 2018 Vincent Leduc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnimauxPickerViewDelegate : NSObject <UIPickerViewDelegate, UIPickerViewDataSource>

@property (strong, nonatomic) NSArray * animaux;

@end
