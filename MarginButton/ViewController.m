//
//  ViewController.m
//  MarginButton
//
//  Created by syt on 2019/12/12.
//  Copyright © 2019 syt. All rights reserved.
//

#import "ViewController.h"

#import "BWMarginButton.h"


@interface ViewController ()

@property (nonatomic, strong) BWMarginButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor.whiteColor colorWithAlphaComponent:.4];
    [self loadSubViews];
}

- (void)loadSubViews
{
    [self.view addSubview:self.button];
}






#pragma mark - lazy loading

- (BWMarginButton *)button
{
    if (!_button) {
        _button = [[BWMarginButton alloc] initWithFrame:CGRectMake(self.view.bounds.size.width / 2 - 40, self.view.bounds.size.height / 2 - 30, 80, 60)];
        _button.titleFontValue = 14;
        _button.interval = 5.0;
        [_button setTitle:@"设置" forState:UIControlStateNormal];
        [_button setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
        [_button setImage:[UIImage imageNamed:@"set"] forState:UIControlStateNormal];
        _button.locationType = ButtonImageLocationLeftAndTotalCenter;
    }
    return _button;
}






@end
