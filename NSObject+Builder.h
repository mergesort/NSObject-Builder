//
//  NSObject+Builder.h
//  Picks
//
//  Created by Joe Fabisevich on 7/17/14.
//  Copyright (c) 2014 Snarkbots. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Builder)

+ (instancetype)buildObject:(void (^) (id builder))withBlock;

@end
