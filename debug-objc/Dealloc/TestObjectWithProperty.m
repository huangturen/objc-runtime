//
//  TestObjectWithProperty.m
//  debug-objc
//
//  Created by mabaoyan on 2019/5/11.
//

#import "TestObjectWithProperty.h"

@implementation TestObjectWithProperty

- (void)dealloc{
    NSLog(@"TestObjectWithProperty dealloc");
}

- (instancetype)init{
    if (self = [super init]) {
        _array = [NSMutableArray array];
    }
    return self;
}

@end
