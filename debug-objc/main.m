//
//  main.m
//  debug-objc
//
//  Created by Closure on 2018/12/4.
//

#import <Foundation/Foundation.h>
#import "TestObject1.h"
#import "TestObject2.h"
#import "TestObjectWithProperty.h"
#import "TestObjectWithProperty+test.h"

static void testDeallocSimple(){
    TestObject1 *obj1 = [TestObject1 new];
    NSLog(@"%@",obj1);
}

static void testDeallocCustomSubClass(){
    TestObject2 *obj2 = [TestObject2 new];
    NSLog(@"%@",obj2);
}

static void testDeallocWithProperty(){
    NSNumber *obj4 = @(2);
    obj4 = nil;
    
    TestObjectWithProperty *obj3 = [[TestObjectWithProperty alloc] init];
    [obj3 testCategoryMethod];
    NSLog(@"%@",obj3);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        testDeallocSimple();
//        testDeallocCustomSubClass();
        testDeallocWithProperty();
    }
    return 0;
}
