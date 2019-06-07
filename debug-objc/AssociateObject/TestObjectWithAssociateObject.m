//
//  TestObjectWithAssociateObject.m
//  debug-objc
//
//  Created by mabaoyan on 2019/6/7.
//

#import "TestObjectWithAssociateObject.h"
#include <objc/runtime.h>

@implementation TestObjectWithAssociateObject


- (NSString *)associateObject{
    return objc_getAssociatedObject(self, @selector(associateObject));
}

- (void)setAssociateObject:(NSString *)associateObject{
    objc_setAssociatedObject(self, @selector(associateObject), associateObject, OBJC_ASSOCIATION_COPY);
}

@end
