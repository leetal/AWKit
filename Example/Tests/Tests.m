//
//  AWKitTests.m
//  AWKitTests
//
//  Created by Alexander Widerberg on 02/18/2015.
//  Copyright (c) 2014 Alexander Widerberg. All rights reserved.
//

SpecBegin(InitialSpecs)

describe(@"these will pass", ^{
    
    it(@"can do maths", ^{
        expect(1).beLessThan(2);
    });
    
    it(@"can read", ^{
        expect(@"team").toNot.contain(@"I");
    });
});

SpecEnd
