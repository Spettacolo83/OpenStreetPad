//
//  OSPMapCSSClass.m
//  OpenStreetPad
//
//  Created by Thomas Davie on 31/10/2011.
//  Copyright (c) 2011 Thomas Davie. All rights reserved.
//

#import "OSPMapCSSClass.h"

@implementation OSPMapCSSClass

@synthesize positive;
@synthesize className;

- (id)initWithSyntaxTree:(CPSyntaxTree *)syntaxTree
{
    self = [super init];
    
    if (nil != self)
    {
        NSArray *c = [syntaxTree children];
        id firstChild = c[0];
        if ([firstChild isKindOfClass:[CPSyntaxTree class]])
        {
            [self setPositive:YES];
            [self setClassName:[[firstChild children][1] identifier]];
        }
        else
        {
            [self setPositive:NO];
            [self setClassName:[[c[1] children][1] identifier]];
        }
    }
    
    return self;
}

@end
