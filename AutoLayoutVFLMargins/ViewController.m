//
//  ViewController.m
//  AutoLayoutVFLMargins
//
//  Created by Richard Allen on 12/23/14.
//  Copyright (c) 2014 Lapdog. All rights reserved.
//

#import "ViewController.h"
#import "View.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view = [View viewWithViewController:self];
}

@end