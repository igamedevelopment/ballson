//
//  ViewController.m
//  ballson
//
//  Created by Sebastian Moreno on 2/24/13.
//  Copyright (c) 2013 Sebastian Moreno. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	_lugar_array = [[NSArray alloc] initWithObjects:@"Directo",@"Sutil", nil ];
    _metodo_array = [[NSArray alloc] initWithObjects:@"Calle",@"Disco",@"Pub", nil ];
    _wing_array = [[NSArray alloc] initWithObjects:@"1",@"2",@"Mas", nil ];
}


#pragma mark Picker ViewDataSource
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 3;
}


-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{

    if (component == metodo)
    {
        return [self.metodo_array count];
    }
    
    else if (component == lugar)
    {
        return [self.lugar_array count];
    }
    
    else
    {
        return [self.wing_array count];
    }

}

#pragma mark Picker Delegate Methods
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{

 
    if (component == metodo)
    {
        return [self.metodo_array objectAtIndex:row];
    }
    
    else if (component == lugar)
    {
        return [self.lugar_array objectAtIndex:row];
    }
    
    else
    {
        return [self.wing_array objectAtIndex:row];
    }


}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
