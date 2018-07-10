//
//  MyClass.m
//  MeliTest
//
//  Created by Jesus Nieves on 9/7/18.
//  Copyright © 2018 Jesus Nieves. All rights reserved.
//


#import "MyClass.h"

@implementation MyClass
    
@synthesize myArray;
    
- (id)init {
    if ((self = [super init])) {
        self.myArray = [[NSMutableArray alloc] initWithObjects:@"A", @"B", @"C", @"D", @"E", @"F", nil];
    }
    return self;
}
    
- (void)dealloc {
    //[myArray release];
    //[super dealloc];
}
    
- (void)deleteElementVer0:(NSString *)anElement {
    int count = [myArray count] - 1;
    for (int i = count; i >= 0; i--) {
        NSString *myArrayElem = [myArray objectAtIndex:i];
        if (anElement == myArrayElem) {
            [myArray removeObject:myArrayElem];
        }
    }
}
    
- (void)deleteElementVer1:(NSString *)anElement {
    for (NSString *myArrayElem in myArray) {
        if ([anElement isEqualToString:myArrayElem]) {
            [myArray removeObject:myArrayElem];
        }
    }
}
    
- (void)deleteElementVer2:(NSString *)anElement {
    int count = [myArray count];
    for (int i = 0; i < count; i++) {
        NSString *myArrayElem = [myArray objectAtIndex:i];
        if ([anElement isEqualToString:myArrayElem]) {
            [myArray removeObject:myArrayElem];
        }
    }
}
    
- (void)deleteElementVer3:(NSString *)anElement {
    NSArray *auxArray = [myArray copy];
    for (NSString *myArrayElem in auxArray) {
        if ([anElement isEqualToString:myArrayElem]) {
            [myArray removeObject:myArrayElem];
        }
    }
}
    
@end
