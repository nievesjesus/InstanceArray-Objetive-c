//
//  MyClass.h
//  MeliTest
//
//  Created by Jesus Nieves on 9/7/18.
//  Copyright © 2018 Jesus Nieves. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface MyClass : NSObject {
    NSMutableArray *myArray;
}

    @property(nonatomic,retain) NSMutableArray *myArray;

- (void)deleteElementVer0:(NSString *)anElement;
- (void)deleteElementVer1:(NSString *)anElement;
- (void)deleteElementVer2:(NSString *)anElement;
- (void)deleteElementVer3:(NSString *)anElement;
    
@end
