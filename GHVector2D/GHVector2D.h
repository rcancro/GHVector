//
//  GHVector2D.h
//  GHVector
//
//  Created by ricky cancro on 3/25/14.
//  Copyright (c) 2014 My name is kuma. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface GHVector2D : NSObject<NSCopying>

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;

- (instancetype)initWithInitialPoint:(CGPoint)initialPoint terminalPoint:(CGPoint)terminalPoint;

- (GHVector2D *)vectorByAddingVector:(GHVector2D *)vector;
- (GHVector2D *)vectorBySubtractingVector:(GHVector2D *)vector;
- (GHVector2D *)vectorByMultiplyingByScalar:(CGFloat)scalar;
- (GHVector2D *)vectorByNormalizing;

- (void)addVector:(GHVector2D *)vector;
- (void)subtractVector:(GHVector2D *)vector;
- (void)multiplyByScalar:(CGFloat)scalar;
- (void)normalizeVector;

- (CGFloat)magnitude;
- (CGFloat)dotProductWithVector:(GHVector2D *)vector;
- (CGFloat)angleBetweenVector:(GHVector2D *)vector;

- (BOOL)isEqual:(id)object;

@end
