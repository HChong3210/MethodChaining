//
//  NSObject+Calculator.h
//  MethodChaining
//
//  Created by HChong on 2017/10/31.
//  Copyright © 2017年 HChong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Caculator.h"

@interface NSObject (Calculator)

+ (NSInteger)makeCaculators:(void(^)(Caculator *make))block;
@end
