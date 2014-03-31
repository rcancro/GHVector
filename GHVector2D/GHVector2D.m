//
//  GHVector2D.m
//  GHVector
//
//  Created by ricky cancro on 3/25/14.
//  Copyright (c) 2014 My name is kuma. All rights reserved.
//

#import "GHVector2D.h"

@implementation GHVector2D

- (instancetype)initWithInitialPoint:(CGPoint)initialPoint terminalPoint:(CGPoint)terminalPoint;
{
    self = [super init];
    if (self)
    {
        _x = terminalPoint.x - initialPoint.x;
        _y = terminalPoint.y - initialPoint.y;
    }
    return self;
}

- (instancetype)initWithX:(CGFloat)x Y:(CGFloat)y
{
    self = [super init];
    if (self)
    {
        _x = x;
        _y = y;
    }
    return self;
}

- (instancetype)copyWithZone:(NSZone *)zone
{
    return [[[self class] alloc] initWithX:self.x Y:self.y];
}

- (GHVector2D *)vectorByAddingVector:(GHVector2D *)vector
{
    GHVector2D *copy = [self copy];
    [copy addVector:vector];
    return copy;
}

- (GHVector2D *)vectorBySubtractingVector:(GHVector2D *)vector
{
    GHVector2D *copy = [self copy];
    [copy subtractVector:vector];
    return copy;
}

- (GHVector2D *)vectorByMultiplyingByScalar:(CGFloat)scalar
{
    GHVector2D *copy = [self copy];
    [copy multiplyByScalar:scalar];
    return copy;
}

- (GHVector2D *)vectorByNormalizing
{
    GHVector2D *copy = [self copy];
    [copy normalizeVector];
    return copy;
}

- (void)addVector:(GHVector2D *)vector
{
    self.x = self.x + vector.x;
    self.y = self.y + vector.y;
}

- (void)subtractVector:(GHVector2D *)vector
{
    self.x = self.x - vector.x;
    self.y = self.y - vector.y;
}

- (void)multiplyByScalar:(CGFloat)scalar
{
    self.x *= scalar;
    self.y *= scalar;
}

- (void)normalizeVector
{
    CGFloat length = [self magnitude];
    [self multiplyByScalar:1/length];
}

- (CGFloat)magnitude
{
    return sqrtf(powf(self.x, 2.0f) + powf(self.y, 2.0f));
}

- (CGFloat)dotProductWithVector:(GHVector2D *)vector
{
    return (self.x * vector.x) + (self.y * vector.y);
}

- (CGFloat)crossProductWithVector:(GHVector2D *)vector
{
    return (self.x * vector.y) - (self.y * vector.x);
}


- (CGFloat)angleBetweenVector:(GHVector2D *)vector
{
    CGFloat dot = [self dotProductWithVector:vector];
    CGFloat magnitudes = [self magnitude] * [vector magnitude];
    return acosf(dot/magnitudes);
}

- (BOOL)isEqual:(id)object
{
    BOOL equal = NO;
    if ([object isKindOfClass:[GHVector2D class]])
    {
        GHVector2D *vector = (GHVector2D *)object;
        equal = (self.x == vector.x) && (self.y == vector.y);
    }
    return equal;
}


@end
