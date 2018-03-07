//
//  Caculator.h
//  MethodChaining
//
//  Created by HChong on 2017/11/1.
//  Copyright © 2017年 HChong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Caculator : NSObject

@property (nonatomic, assign) NSInteger result;//结果


/**
 返回值是block(Caculator *(^)(NSInteger number)), 该block的返回值是Caculator*, 参数为NSInteger类型
 */
- (Caculator *(^)(NSInteger number))add;
- (Caculator *(^)(NSInteger number))minus;
- (Caculator *(^)(NSInteger number))multiply;
- (Caculator *(^)(NSInteger number))divide;

//由于这几个方法的返回值是一个block, 这个block的返回值是self, 参数是NSInteger, 所以这几个方法的后面可以跟上NSInteger类型的参数;
@end
