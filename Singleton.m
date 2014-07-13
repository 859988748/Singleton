//
//  Singleton.m
//  testttttt
//
//  Created by Elliot on 14-7-12.
//  Copyright (c) 2014年 Elliot. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton
static Singleton * _instance = nil;
+(id) sharedInstance{
    @synchronized(self){
        if (_instance == nil) {
//            NSLog(@"first alloc");
            _instance = [NSAllocateObject([self class], 0, NULL) init];
        }else{
//            NSLog(@"instance already exits");
        }
    }

//    NSLog(@"%d",_instance.retainCount);
    return _instance;
}

+(id) allocWithZone:(struct _NSZone *)zone{
//    NSLog(@"allocWithZone invoked");
    return [[self sharedInstance] retain];
}

-(id) copyWithZone:(NSZone *)zone{
    return self;
}

-(id) retain{
    return self;
}

-(NSUInteger) retainCount{
    return NSIntegerMax;
}
-(oneway void) release{
    
}
-(id) autorelease{
    return self;
}


@end