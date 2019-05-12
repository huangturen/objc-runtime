//
//  TestObjectWithProperty+test.m
//  debug-objc
//
//  Created by mabaoyan on 2019/5/12.
//

#import "TestObjectWithProperty+test.h"

@implementation TestObjectWithProperty (test)

- (void)testCategoryMethod{
    __weak typeof(self) weakSelf = self;
    NSLog(@"This is test category method, name is %@", weakSelf);
}

@end
