//
//  ViewController.h
//  ballson
//
//  Created by Sebastian Moreno on 2/24/13.
//  Copyright (c) 2013 Sebastian Moreno. All rights reserved.
//

#import <UIKit/UIKit.h>
#define metodo 0
#define lugar 1
#define wing 2

@interface ViewController : UIViewController <UIPickerViewDataSource,UIPickerViewDelegate>
{}

@property (nonatomic,retain) IBOutlet UIPickerView *picker;
@property (nonatomic,retain) NSArray *metodo_array;
@property (nonatomic,retain) NSArray *lugar_array;
@property (nonatomic,retain) NSArray *wing_array;

@end
