//
//  GHVectorTests.m
//  GHVectorTests
//
//  Created by ricky cancro on 3/25/14.
//  Copyright (c) 2014 My name is kuma. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GHVector2D.h"

@interface GHVectorTests : XCTestCase

@end

@implementation GHVectorTests

- (void)assertVector:(GHVector2D *)vector equalToPoint:(CGPoint)point
{
    XCTAssertEqual(vector.x, point.x, @"X is wrong");
    XCTAssertEqual(vector.y, point.y, @"Y is wrong");
}

- (void)testCreation
{
    GHVector2D *vector = nil;
    
    vector = [[GHVector2D alloc] initWithInitialPoint:CGPointMake(0.f, 4.f) terminalPoint:CGPointMake(3.f, 2.f)];
    [self assertVector:vector equalToPoint:CGPointMake(3.f, -2.f)];
    
    vector = [[GHVector2D alloc] initWithInitialPoint:CGPointMake(43.f, -23.f) terminalPoint:CGPointMake(2.f, 11.f)];
    [self assertVector:vector equalToPoint:CGPointMake(-41.f, 34.f)];

    vector = [[GHVector2D alloc] initWithInitialPoint:CGPointMake(1.f, 2.f) terminalPoint:CGPointMake(-1.f, 2.f)];
    [self assertVector:vector equalToPoint:CGPointMake(-2.f, 0.f)];

    vector = [[GHVector2D alloc] initWithInitialPoint:CGPointMake(6.34f, -1.22f) terminalPoint:CGPointMake(-15.2f, 2.f)];
    [self assertVector:vector equalToPoint:CGPointMake(-21.54f, 3.22f)];

}

- (void)testMagnitude
{
    GHVector2D *vector = [[GHVector2D alloc] init];
    
    vector.x = 3.f;
    vector.y = 21.f;
    XCTAssertEqualWithAccuracy([vector magnitude], 21.213f, .01f, @"Magnitude is not correct");


    vector.x = 1.43f;
    vector.y = -.21f;
    XCTAssertEqualWithAccuracy([vector magnitude], 1.445f, .01f, @"Magnitude is not correct");
    
    vector.x = 33.f;
    vector.y = 1.f;
    XCTAssertEqualWithAccuracy([vector magnitude], 33.015f, .01f, @"Magnitude is not correct");

}

- (void)testAddition
{
    GHVector2D *vectorA = [[GHVector2D alloc] init];
    vectorA.x = 3.f;
    vectorA.y = 21.f;

    GHVector2D *vectorB = [[GHVector2D alloc] init];
    vectorB.x = 12.f;
    vectorB.y = .6f;
    
    GHVector2D *sum = [vectorA vectorByAddingVector:vectorB];
    [self assertVector:sum equalToPoint:CGPointMake(15.f, 21.6f)];
    
    GHVector2D *difference = [vectorA vectorBySubtractingVector:vectorB];
    [self assertVector:difference equalToPoint:CGPointMake(-9.f, 20.4f)];
    
    difference = [vectorA vectorBySubtractingVector:vectorA];
    [self assertVector:difference equalToPoint:CGPointMake(0.f, 0.f)];
    
}

- (void)testMultiplication
{
    GHVector2D *vector = [[GHVector2D alloc] init];
    vector.x = .32f;
    vector.y = 2.f;
    
    GHVector2D *product = [vector vectorByMultiplyingByScalar:.432];
    [self assertVector:product equalToPoint:CGPointMake(0.13824f, 0.864f)];
    
    product = [vector vectorByMultiplyingByScalar:-1];
    [self assertVector:product equalToPoint:CGPointMake(-.32f, -2.f)];
    
    product = [vector vectorByMultiplyingByScalar:0];
    [self assertVector:product equalToPoint:CGPointMake(0.f, 0.f)];
}

- (void)testDotProduct
{
    GHVector2D *vectorA = [[GHVector2D alloc] init];
    vectorA.x = 3.f;
    vectorA.y = 21.f;
    
    GHVector2D *vectorB = [[GHVector2D alloc] init];
    vectorB.x = 12.f;
    vectorB.y = .6f;
    XCTAssertEqualWithAccuracy([vectorA dotProductWithVector:vectorB], 48.6f, 0.1f, @"Dot Product is not correct");
}

- (void)testAngleBetweenVectors
{
    GHVector2D *vectorA = [[GHVector2D alloc] init];
    vectorA.x = 1.f;
    vectorA.y = 0.f;
    
    GHVector2D *vectorB = [[GHVector2D alloc] init];
    vectorB.x = 0.f;
    vectorB.y = 1.f;
    XCTAssertEqualWithAccuracy([vectorA angleBetweenVector:vectorB], 1.57f, 0.01f, @"Dot Product is not correct");
    
    vectorA.x = 16.f;
    vectorA.y = 34.f;
    
    vectorB.x = 3.f;
    vectorB.y = 14.f;
    XCTAssertEqualWithAccuracy([vectorA angleBetweenVector:vectorB], .228f, 0.01f, @"Dot Product is not correct");
}

- (void)testNormalize
{
    GHVector2D *vector = [[GHVector2D alloc] init];
    vector.x = 3.f;
    vector.y = 10.f;
    
    [vector normalizeVector];
    XCTAssertEqualWithAccuracy(vector.x, .2873f, 0.01f, @"normalized X is not correct");
    XCTAssertEqualWithAccuracy(vector.y, .9578f, 0.01f, @"normalized Y is not correct");
}

- (void)testEquals
{
    GHVector2D *vectorA = [[GHVector2D alloc] init];
    vectorA.x = 1.f;
    vectorA.y = 0.f;
    
    
    GHVector2D *vectorB = [[GHVector2D alloc] init];
    vectorB.x = 1.f;
    vectorB.y = 0.f;
    
    XCTAssertTrue([vectorA isEqual:vectorB], @"vectors should be equal");
    
    vectorB.y = 2.f;
    XCTAssertFalse([vectorA isEqual:vectorB], @"vectors should not be equal");
    

}

@end
