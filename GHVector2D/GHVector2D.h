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

/**
 *  Creates a new GHVector2D given the initial point and terminal point
 *
 *  @param initialPoint  The initial point of the vector
 *  @param terminalPoint The terminal point of the vector
 *
 *  @return a new GHVector2D
 */
- (instancetype)initWithInitialPoint:(CGPoint)initialPoint terminalPoint:(CGPoint)terminalPoint;

/**
 *  Returns a new vector by adding the input vector to self
 *
 *  @param vector the vector to add to self
 *
 *  @return the result of adding vector to self
 */
- (GHVector2D *)vectorByAddingVector:(GHVector2D *)vector;

/**
 *  Returns a new vector by subtracting the input vector to self
 *
 *  @param vector the vector to subtract to self
 *
 *  @return the result of subtracting vector to self
 */
- (GHVector2D *)vectorBySubtractingVector:(GHVector2D *)vector;

/*
 *  Returns a new vector by multiplying the input scalar to self
 *
 *  @param scalar the scalar to multiply by
 *
 *  @return the result of multiple self by scalar
 */
- (GHVector2D *)vectorByMultiplyingByScalar:(CGFloat)scalar;

/**
 *  Normalizes self
 *
 *  @return A new vector equal to self normalized
 */
- (GHVector2D *)vectorByNormalizing;

/**
 *  Add vector to self
 *
 *  @param vector the vector to add to self
 */
- (void)addVector:(GHVector2D *)vector;

/**
 *  Subtract vector from self
 *
 *  @param vector the vector to subtract from self
 */
- (void)subtractVector:(GHVector2D *)vector;

/**
 *  Multiply self by scalar
 *
 *  @param scalar the scalar to multiply to self
 */
- (void)multiplyByScalar:(CGFloat)scalar;

/**
 *  Normalizes self
 */
- (void)normalizeVector;

/**
 *  @return Returns the magnitude of self
 */
- (CGFloat)magnitude;

/**
 *  Computes the dot product between self and vector
 *
 *  @param vector The vector to
 *
 *  @return dot product of the two vectors
 */
- (CGFloat)dotProductWithVector:(GHVector2D *)vector;

- (CGFloat)crossProductWithVector:(GHVector2D *)vector;

- (CGFloat)angleBetweenVector:(GHVector2D *)vector;

- (BOOL)isEqual:(id)object;

@end
