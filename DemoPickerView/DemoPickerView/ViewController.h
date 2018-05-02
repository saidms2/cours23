//
//  ViewController.h
//  DemoPickerView
//
//  Created by Vincent Leduc on 18-03-09.
//  Copyright © 2018 Vincent Leduc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (strong, nonatomic) IBOutlet UIPickerView * lePickerView;
@property(strong, nonatomic) NSMutableArray * liste;


@end

