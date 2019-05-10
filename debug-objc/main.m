//
//  main.m
//  debug-objc
//
//  Created by Closure on 2018/12/4.
//

#import <Foundation/Foundation.h>
#import "TestObject1.h"

static void testDeallocSimple(){
    TestObject1 *obj1 = [TestObject1 new];
    NSLog(@"%@",obj1);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        testDeallocSimple();
    }
    return 0;
}
