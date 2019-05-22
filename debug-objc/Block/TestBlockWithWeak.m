//
//  TestBlockWithWeak.m
//  debug-objc
//
//  Created by mabaoyan on 2019/5/22.
//

#import "TestBlockWithWeak.h"
#import <objc/runtime.h>

typedef void(^bt)(void);

@interface TestBlockWithWeak()

@property(nonatomic,weak)bt a;
@property(nonatomic,strong)bt b;
@property(nonatomic,strong)bt c;

@end

@implementation TestBlockWithWeak

- (void)method1{
    int a = 0;
    __block int i=0;
    __weak void(^bt)(void) = ^{
        i++;
        NSLog(@"num:%@",@(i));
    };
    
//    BOOL isObj = [((id)bt) isKindOfClass:[NSObject class]];
    NSObject *obj = [NSObject new];
    BOOL isClass0 = object_isClass(obj);
    
    BOOL isClass = object_isClass(bt);
    const char * name = object_getClassName(bt);
    Class cls = object_getClass(bt);
    self.a = bt;
    self.b = bt;
    self.c = bt;
    NSLog(@"%@,%@,%@,%@",bt,self.a,self.b,self.c);
}

- (void)method2{
//    self.a = self.b;
//    Class x = object_getClass(_a);
//    if (_a) {
//        self.a();
//    }
}

@end
