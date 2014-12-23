//
//  View.m
//  AutoLayoutVFLMargins
//
//  Created by Richard Allen on 12/23/14.
//  Copyright (c) 2014 Lapdog. All rights reserved.
//

#import "View.h"

@interface View ()

@property UIViewController *viewController;
@property (strong, nonatomic) UIButton *button;

@end

@implementation View

+ (View *)viewWithViewController:(UIViewController *)viewController {
    return [[View alloc] initWithViewController:viewController];
}

- (instancetype)initWithViewController:(UIViewController *)viewController {
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.viewController = viewController;
        
        _button = [UIButton buttonWithType:UIButtonTypeSystem];
        [_button setTitle:@"Hello there!" forState:UIControlStateNormal];
        _button.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:_button];
    }
    
    return self;
}

- (void)layoutSubviews {
    NSDictionary *views = @{ @"_button" : _button,
                             @"_topLayoutGuide" : _viewController.topLayoutGuide };
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[_topLayoutGuide][_button]"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:views]];
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[_button]-|"
                                                                 options:0
                                                                 metrics:nil
                                                                   views:views]];
    
    [super layoutSubviews];
}

@end
