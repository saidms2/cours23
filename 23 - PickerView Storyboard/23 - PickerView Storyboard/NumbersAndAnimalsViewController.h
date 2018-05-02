//
//  NumbersAndAnimalsViewController.h
//  23 - PickerView Storyboard
//
//  Created by Vincent Leduc on 18-03-18.
//  Copyright © 2018 Vincent Leduc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AnimauxPickerViewDelegate.h"

@interface NumbersAndAnimalsViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIPickerView * animauxPickerView;
@property (strong, nonatomic)AnimauxPickerViewDelegate * monAnimauxPickerViewDelegate;
@end
