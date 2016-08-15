//
//  TestObject.m
//  testProject
//
//  Created by 苏孝禹 on 16/8/15.
//  Copyright © 2016年 苏孝禹. All rights reserved.
//

#import "TestObject.h"

@implementation TestObject


+(NSMutableDictionary *)currentSetKey{
    
    NSMutableDictionary *setDict = [NSMutableDictionary dictionary];
    [setDict setObject:@"id" forKey:@"uid"];
    return setDict;
}
@end
