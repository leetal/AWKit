//
//  AWKitTests.m
//  AWKitTests
//
//  Created by Alexander Widerberg on 02/18/2015.
//  Copyright (c) 2014 Alexander Widerberg. All rights reserved.
//

#define AWDebug 1
#include "AWKit.h"

SpecBegin(InitialSpecs)

describe(@"NSString - should pass", ^{

    __block NSString *testString = nil;

    beforeEach(^{
        testString = @" aWKit test String\n";
    });
    
    it(@"Uppercase", ^{
        testString = [testString stringWithUpperCaseFirstCharacter];
        expect(testString).equal(@" aWKit test String\n");
    });
    
    it(@"Uppercase each word", ^{
        testString = [testString stringWithUpperCaseFirstCharacterOfEachWord];
        expect(testString).equal(@" AWKit Test String\n");
    });

    it(@"Trim whitespace", ^{
        testString = [testString stringByTrimmingWhitespace];
        expect(testString).equal(@"aWKit test String\n");
    });

    it(@"Uppercase without whitespace", ^{
        testString = [[testString stringByTrimmingWhitespace] stringWithUpperCaseFirstCharacter];
        expect(testString).equal(@"AWKit test String\n");
    });

    it(@"Trim newline", ^{
        testString = [testString stringByTrimmingNewLine];
        expect(testString).equal(@" aWKit test String");
    });

    afterAll(^{
        testString = nil;
    });
});

describe(@"UIColor - should pass", ^{

    __block UIColor *testColor = nil;

    it(@"UInt32 hex", ^{
        testColor = [UIColor colorWithHex:0xffffff alpha:1.0f]; //White
        expect(CGColorEqualToColor(testColor.CGColor, [UIColor whiteColor].CGColor)).to.beTruthy;
    });

    it(@"String hex", ^{
        testColor = [UIColor colorWithHexString:@"#ffffff" alpha:1.0f]; //White
        expect(CGColorEqualToColor(testColor.CGColor, [UIColor whiteColor].CGColor)).to.beTruthy;
    });

    afterEach(^{
        testColor = nil;
    });
});

SpecEnd
