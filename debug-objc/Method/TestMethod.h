//
//  TestMethod.h
//  debug-objc
//
//  Created by mabaoyan on 2019/6/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestMethod : NSObject

+ (void)testClassMethod;

- (void)testInstanceMethod;


@end

@interface TestMethod (AddClass)

+ (void)testCategoryClassMethod;

+ (void)testCategoryInstanceMethod;

@end

NS_ASSUME_NONNULL_END
