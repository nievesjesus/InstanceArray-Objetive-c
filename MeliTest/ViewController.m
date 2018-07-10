//
//  ViewController.m
//  MeliTest
//
//  Created by Jesus Nieves on 9/7/18.
//  Copyright © 2018 Jesus Nieves. All rights reserved.
//

#import "ViewController.h"
#import "MyClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    MyClass *myInstance = [[MyClass alloc] init];
    
    NSLog(@"Resultado 1");
    [myInstance deleteElementVer0:@"B"];
    NSLog(@"%@", [myInstance.myArray description]);
    
    NSLog(@"Resultado 2");
    [myInstance deleteElementVer1:@"B"];
    NSLog(@"%@", [myInstance.myArray description]);
    
    NSLog(@"Resultado 3");
    [myInstance deleteElementVer2:@"B"];
    NSLog(@"%@", [myInstance.myArray description]);
    
    NSLog(@"Resultado 3");
    [myInstance deleteElementVer3:@"B"];
    NSLog(@"%@", [myInstance.myArray description]);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
