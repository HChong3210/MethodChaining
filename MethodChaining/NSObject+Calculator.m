//
//  NSObject+Calculator.m
//  MethodChaining
//
//  Created by HChong on 2017/10/31.
//  Copyright © 2017年 HChong. All rights reserved.
//

#import "NSObject+Calculator.h"

@implementation NSObject (Calculator)

+ (NSInteger)makeCaculators:(void(^)(Caculator *make))block {
    Caculator *mgr = [[Caculator alloc] init];
    block(mgr);
    return mgr.result;
}
@end
