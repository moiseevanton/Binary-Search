//
//  Search.m
//  Binary Search
//
//  Created by Anton Moiseev on 2016-05-03.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import "Search.h"

@implementation Search

-(int)binarySearchWithArray:(NSMutableArray *)array andNumber:(NSNumber *)number andStart:(int)s andEnd:(int)e {
    
    if (s == e) {
        
        if ([array[s] intValue] == [number intValue]) {
            
            return s;
            
        } else  {
            
            return -1;
            
        }
        
            
        
    } else {
        
        int m = (s + e)/2;
        
        if ([array[m] intValue] >= [number intValue]) {
            
            return [self binarySearchWithArray:array andNumber:number andStart:s andEnd:m];
            
        } else {
            
            return [self binarySearchWithArray:array andNumber:number andStart:m+1 andEnd:e];
            
        }
        
    }
}

@end
