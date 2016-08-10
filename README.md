# SuBaseObject
一个简单的 json对象   市场上 有很多json的对象 但往往类库很大 其实解决 这种数据 用一个文件 就可以了



使用方法 

创建一个对象 继承SuBaseObject
    
    
    testBaseObject *archiveModel = [testBaseObject suObjectWithKeyValues:jsonObject];
    
    //    NSLog(@"name:%@",archiveModel.name);
//    NSLog(@"uid:%@",archiveModel.uid);
//    NSLog(@"sex:%@",archiveModel.sex);
//    NSLog(@"age:%@",archiveModel.age);
//    NSLog(@"score:%@",archiveModel.score);


就这么简单   

归档什么的 里面也都处理好了 

    //存储对象
    
    [Utils saveData:archiveModel to:@"testDict"];
    
    
    
    //读取对象
    
    testBaseObject *loadBaseObject = [Utils loadDataFrom:@"testDict"];
    
    NSLog(@"load name:%@",loadBaseObject.name);
    NSLog(@"load uid:%@",loadBaseObject.uid);
    NSLog(@"load sex:%@",loadBaseObject.sex);
    NSLog(@"load age:%@",loadBaseObject.age);
    NSLog(@"load score:%@",loadBaseObject.score);
