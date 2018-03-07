//
//  Caculator.m
//  MethodChaining
//
//  Created by HChong on 2017/11/1.
//  Copyright © 2017年 HChong. All rights reserved.
//

#import "Caculator.h"

@implementation Caculator

- (Caculator *(^)(NSInteger number))add {
    return ^Caculator *(NSInteger number) {
        self.result += number;
        return self;
    };
}

- (Caculator *(^)(NSInteger number))minus {
    return ^Caculator *(NSInteger number) {
        self.result -= number;
        return self;
    };
}

- (Caculator *(^)(NSInteger number))multiply {
    Caculator *(^caculator)(NSInteger number) = ^(NSInteger num) {
        self.result *= num;
        return self;
    };
    return caculator;
}

- (Caculator *(^)(NSInteger number))divide {
    Caculator *(^caculator)(NSInteger number) = ^(NSInteger num) {
        self.result /= num;
        return self;
    };
    return caculator;
}

@end
