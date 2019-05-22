//
//  TestBlockStructure.m
//  debug-objc
//
//  Created by mabaoyan on 2019/5/22.
//

#import "TestBlockStructure.h"

static NSInteger g_count = 0;

void (^globalBlock) (void) = ^{
    NSLog(@"global block:%@",@(g_count));
};

@implementation TestBlockStructure

- (void)blockFire{
    
    __block int count = 100;
    //下面的myCustomBlk定义在栈上，然后被copy到了堆上，属于mallocBlock
    void (^myCustomBlk)(void) = ^{
        NSLog(@"In Block: %d", count++);
    };
    count++;
    
    
   void(^myCustomBlk2)(void) = ^{
        NSLog(@"In Block: %d", count++);
    };
    
    void(^myCustomBlk3)(void) = ^{
        NSLog(@"Global block");
    };
    
    void(^myCustomBlk4)(NSInteger a) = ^(NSInteger a){
        NSLog(@"Global block : %@,%@", @(a),@(g_count++));
    };
    
    //global block，
    globalBlock();
    
   // mallocBlock
    myCustomBlk();
    
    //stackBlock
    myCustomBlk2();
    
    //globalBlock
    myCustomBlk3();
    
    myCustomBlk4(4);

}

@end
