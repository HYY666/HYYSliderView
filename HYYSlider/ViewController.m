//
//  ViewController.m
//  HYYSlider
//
//  Created by Apple on 2018/8/22.
//  Copyright © 2018年 hyy. All rights reserved.
//

#import "ViewController.h"
#import "HYYSlider.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel * changeLabel = [[UILabel alloc]init];
    changeLabel.textColor = [UIColor whiteColor];
    changeLabel.frame = CGRectMake(50, 50, 200, 50);
    [self.view addSubview:changeLabel];
    
    UILabel *endLabel = [[UILabel alloc]init];
    endLabel.textColor = [UIColor whiteColor];
    endLabel.frame = CGRectMake(50, 150, 200, 50);
    [self.view addSubview:endLabel];
    
    
    self.view.backgroundColor = [UIColor grayColor];
    HYYSlider *sliderV = [[HYYSlider alloc]initWithFrame:CGRectMake(50, 100, 250, 50) direction:HYYSliderDirectionHorizonal];
    [self.view addSubview:sliderV];
    
    [sliderV sliderChangeBlock:^(CGFloat value) {
        changeLabel.text = [NSString stringWithFormat:@"改变的值:%.2f",value];
        NSLog(@"改变的值:%f",value);
    }];
  
    [sliderV sliderTouchEndBlock:^(CGFloat value) {
        endLabel.text = [NSString stringWithFormat:@"触摸结束的值:%.2f",value];
        NSLog(@"触摸结束的值:%f",value);
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
