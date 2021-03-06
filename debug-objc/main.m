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
#import "TestBlockWithWeak.h"
#import "TestBlockStructure.h"
#import "TestObjectWithAssociateObject.h"
#import "TestMethod.h"

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

static void testWeakBlock(){
    TestBlockWithWeak *weakBlock = [[TestBlockWithWeak alloc] init];
    [weakBlock method1];
    [weakBlock method2];
}

static void testBlockStructure(){
    TestBlockStructure *blkStructure = [TestBlockStructure new];
    [blkStructure blockFire];
}

static void testAssociateObject(){
    TestObjectWithAssociateObject *associate = [TestObjectWithAssociateObject new];
    associate.associateObject = @"test";
    
    NSLog(@"%@",associate.associateObject);
}

static void testMethod(){
    TestMethod *methodTestor = [TestMethod new];
//    associate.associateObject = @"test";
    BOOL test1 = [TestMethod respondsToSelector:@selector(testClassMethod)];
    BOOL test2 = [TestMethod respondsToSelector:@selector(test)];

    [TestMethod testClassMethod];
    [TestMethod testCategoryClassMethod];
    NSLog(@"%@",methodTestor);
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Dealloc
        
//        testDeallocSimple();
//        testDeallocCustomSubClass();
//        testDeallocWithProperty();
        
        
        //Block
//        testWeakBlock();
//        testBlockStructure();
        
        //AssociateObject
//        testAssociateObject();
        
        //Class method & instance Method
        testMethod();
    }
    return 0;
}
