//
//  ClassA.m
//  LibraryAppWithCRUD
//
//  Created by Chris Meehan on 1/1/14.
//  Copyright (c) 2014 Chris Meehan. All rights reserved.
//

#import "ClassA.h"

@implementation ClassA
-(void)aSaysHi{
    NSLog(@"a says hi");
    
    ClassB* classB = [[ClassB alloc]init];
    [classB bSaysHi];
    
}

@end




@implementation ClassB
-(void)bSaysHi{
    NSLog(@"b says hi");
}

@end