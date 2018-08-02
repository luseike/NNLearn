//
//  NNSecondViewController.m
//  NNRuntimeTest
//
//  Created by liupengkun on 2018/6/21.
//  Copyright © 2018年 以梦为马. All rights reserved.
//

#import "NNSecondViewController.h"
#import "NSObject+NNAddAttribute.h"

@interface NNSecondViewController ()

@property (nonatomic, strong) NSObject *person;

@end

@implementation NNSecondViewController

- (void)initView {
    [super initView];
    _person = [NSObject new];
    // 说好的动态添加属性的呢，这样真的好么
    _person.name = @"添加属性成功";
}

- (void)buttonClick:(UIButton *)sender {
    self.testLabelText = _person.name.length ? _person.name : @"添加属性失败";
}

@end
