//
//  HYYSlider.h
//  reader
//
//  Created by huang on 17/4/3.
//  Copyright © 2017年 juyu. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^TouchStateEnd) (CGFloat value);
typedef void(^TouchStateChanged) (CGFloat value);

typedef NS_ENUM(NSInteger, HYYSliderDirection) {
    HYYSliderDirectionHorizonal = 0,
    HYYSliderDirectionVertical,
};

@interface HYYSlider : UIControl

@property (nonatomic, assign) CGFloat minValue;//最小值
@property (nonatomic, assign) CGFloat maxValue;//最大值
@property (nonatomic, assign) CGFloat value;//滑动值
@property (nonatomic, assign) CGFloat ratioNum;//滑动的比值

@property (nonatomic, assign) HYYSliderDirection direction;//方向

@property (nonatomic, copy) TouchStateChanged StateChanged;
@property (nonatomic, copy) TouchStateEnd StateEnd;

- (id)initWithFrame:(CGRect)frame direction:(HYYSliderDirection)direction;

- (void)sliderChangeBlock:(TouchStateChanged)didChangeBlock;

- (void)sliderTouchEndBlock:(TouchStateEnd)touchEndBlock;




@end
