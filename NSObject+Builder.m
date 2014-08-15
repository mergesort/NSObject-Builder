//
//  NSObject+Builder.m
//  Picks
//
//  Created by Joe Fabisevich on 7/17/14.
//  Copyright (c) 2014 Snarkbots. All rights reserved.
//

#import "NSObject+Builder.h"

@implementation NSObject (Builder)

+ (instancetype)buildObject:(void (^) (id builder))withBlock
{
    id obj = [[[self class] alloc] init];
    withBlock(obj);
    return obj;
}

@end
