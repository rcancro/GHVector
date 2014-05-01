GHVector
========

A simple 2D vector class that can do the following operations:

* Add
* Subtract
* Multiply
* Normalize
* Compute Magnitude
* Dot product
* Cross product
* calculate angle between 2 vectors
* Test Equality

It even has a test suite so you know it is super awesome.

Here are some examples:

````
// creation
 GHVector2D *vectorA = [[GHVector2D alloc] initWithInitialPoint:CGPointMake(0.f, 4.f) terminalPoint:CGPointMake(3.f, 2.f)];
 
 GHVector2D *vectorB = [[GHVector2D alloc] initWithInitialPoint:CGPointMake(2.f, 1.2f) terminalPoint:CGPointMake(.4f, .5f)];
 
 // magnitude
 NSLog(@"%f", [vectorA magnitude]);
 
 // addition:
 GHVector2D *sum = [vectorA vectorByAddingVector:vectorB];
 
 // in place addition
 [vectorA addVector:vectorB];
 
 // dot product:
 [vectorA dotProductWithVector:vectorB];
 
 // angle between vectors
 [vectorA angleBetweenVector:vectorB];

````

To use in your project just add the following files:
* GHVector.h
* GHVector.m

YAY!
