#SuBaseObject

一个简单的 json对象 市场上 有很多json的对象 但往往类库很大 其实解决 这种数据 用一个文件 就可以了

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


如果key和服务器返回的key 不一致怎么办？

在你继承的对象里面重写  即可 

//重写当前方法 
+(NSMutableDictionary *)currentSetKey{

NSMutableDictionary *setDict = [NSMutableDictionary dictionary];
[setDict setObject:@"id" forKey:@"uid"];
return setDict;
}