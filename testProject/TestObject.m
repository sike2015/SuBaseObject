//
//  TestObject.m
//  testProject
//
//  Created by 苏孝禹 on 16/8/15.
//  Copyright © 2016年 苏孝禹. All rights reserved.
//

#import "TestObject.h"

@implementation TestObject


//重写当前方法 
+(NSMutableDictionary *)currentSetKey{
    
    NSMutableDictionary *setDict = [NSMutableDictionary dictionary];
    [setDict setObject:@"id" forKey:@"uid"];
    return setDict;
}
@end
