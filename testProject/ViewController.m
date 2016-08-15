//
//  ViewController.m
//  testProject
//
//  Created by 苏孝禹 on 16/8/15.
//  Copyright © 2016年 苏孝禹. All rights reserved.
//

#import "ViewController.h"
#import "TestObject.h"
#import "Utils.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //json路径
    NSString *jsonPath = [[NSBundle mainBundle]pathForResource:@"testJSON" ofType:@"txt" ];
    
    
    
    NSError *error;
    NSString *requestTmp = [[NSString alloc]initWithContentsOfFile:jsonPath encoding:NSUTF8StringEncoding error:&error ];
    
    NSData *resData = [[NSData alloc] initWithData:[requestTmp dataUsingEncoding:NSUTF8StringEncoding]];
    
    NSDictionary *resultDic = [NSJSONSerialization JSONObjectWithData:resData options:NSJSONReadingMutableLeaves error:&error];  //解析
    
    
    
    TestObject *archiveModel = [TestObject suObjectWithKeyValues:resultDic];
    
    NSLog(@"name:%@",archiveModel.name);
    NSLog(@"uid:%@",archiveModel.uid);
    NSLog(@"sex:%@",archiveModel.sex);
    NSLog(@"age:%@",archiveModel.age);
    NSLog(@"score:%@",archiveModel.score);
    
    
    
    //存储对象
    
    [Utils saveData:archiveModel to:@"testDict"];
    
    
    
    //读取对象
    
    TestObject *loadBaseObject = [Utils loadDataFrom:@"testDict"];
    
    NSLog(@"load name:%@",loadBaseObject.name);
    NSLog(@"load uid:%@",loadBaseObject.uid);
    NSLog(@"load sex:%@",loadBaseObject.sex);
    NSLog(@"load age:%@",loadBaseObject.age);
    NSLog(@"load score:%@",loadBaseObject.score);
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
