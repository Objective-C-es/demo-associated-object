//
//  RAMViewController.m
//  DemoAssociatedObjects
//
//  Created by Rafael Aguilar Martín on 03/03/13.
//  Copyright (c) 2013 Rafael Aguilar Martín. All rights reserved.
//

#import "RAMViewController.h"
#import "UIImage+Title.h"

@interface RAMViewController ()

@end

@implementation RAMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIImage *image = [UIImage imageNamed:@"objectiveC_logo"];
    image.title = @"Hola gente!";
    
    self.imageView.image = image;
    self.label.text = image.title;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
