//
//  main.m
//  Binary Search
//
//  Created by Anton Moiseev on 2016-05-03.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Search.h"

int main(int argc, const char * argv[]) {
    
    Search *searchMethod = [[Search alloc] init];

    NSMutableArray *myArray = [[NSMutableArray alloc] init];
    
    for (int i=0; i < 1000000; i++) {
        
        [myArray addObject:@(i)];
        
    }
    
    NSNumber *searchNumber = @(999999);
    
    NSDate *methodStart = [NSDate date];
    
    int index = [searchMethod binarySearchWithArray:myArray andNumber:searchNumber andStart:0 andEnd:myArray.count - 1];
    
    NSDate *methodFinish = [NSDate date];
    NSTimeInterval executionTime = [methodFinish timeIntervalSinceDate:methodStart];
    NSLog(@"execution time = %f", executionTime);
    
    return 0;
}
