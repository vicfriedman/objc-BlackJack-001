//
//  PlayingCardSpec.m
//  OOP-Cards-Model
//
//  Created by Chris Gonzales on 6/10/14.
//  Copyright 2014 Al Tyus. All rights reserved.
//

#import "Specta.h"
#import "FISPlayingCard.h"
#define EXP_SHORTHAND
#import "Expecta.h"
#import "KIF.h"
#import "Swizzlean.h"

SpecBegin(PlayingCard)

describe(@"FISPlayingCard", ^{
    __block FISPlayingCard *myCard;
    beforeEach(^{
        myCard = [[FISPlayingCard alloc] initWithSuit:@"♠" Rank:@5];
    });
    
    it(@"exists", ^{
        expect(myCard).notTo.beNil();
    });  
    
    describe(@"initWithSuit:Rank:", ^{
        it(@"should have a suit matching what I set it to",^{
            expect(myCard.suit).to.equal(@"♠");
        });
        
        it(@"should have a rank matching what I set it to",^{
            expect(myCard.rank).to.equal(@5);
        });
    });
    
    describe(@"init", ^{
        __block FISPlayingCard *defaultCard = [[FISPlayingCard alloc] init];
        it(@"should set suit to an empty string by default",^{
            expect(defaultCard.suit).to.equal(@"");
        });
        
        it(@"should set rank to 0 by default",^{
            expect(defaultCard.rank).to.equal(@0);
        });
    });
    
    describe(@"setSuit", ^{
        it(@"the suit should match the value I set",^{
            myCard.suit = @"♥";
            expect(myCard.suit).to.equal(@"♥");
        });
    });
    
    describe(@"setRank", ^{
        it(@"the rank should match the value I set",^{
            myCard.rank = @10;
            expect(myCard.rank).to.equal(@10);
        });
    });
    
    describe(@"valid rank with designated initializer", ^{
        
        FISPlayingCard *myValidPlayingCard = [[FISPlayingCard alloc] initWithSuit:@"♥" Rank:@13];
        FISPlayingCard *myInvalidPlayingCard = [[FISPlayingCard alloc] initWithSuit:@"♥" Rank:@14];

        it(@"valid ranks should return the value as an NSNumber",^{
            expect(myValidPlayingCard.rank).to.equal(@13);
        });
        
        it(@"invalid ranks should return 0 value",^{
            expect(myInvalidPlayingCard.rank).to.equal(@0);
        });
    });
    
    describe(@"valid rank with setter", ^{
        __block FISPlayingCard *myValidPlayingCard;
        __block FISPlayingCard *myInvalidPlayingCard;
        
        beforeAll(^{
            myValidPlayingCard = [[FISPlayingCard alloc] init];
            myInvalidPlayingCard = [[FISPlayingCard alloc] init];
            myValidPlayingCard.rank = @13;
            myInvalidPlayingCard.rank = @14;
        });
        
        it(@"valid ranks should return value as NSNumber",^{
            expect(myValidPlayingCard.rank).to.equal(@13);
        });
        
        it(@"invalid ranks should return 0 value",^{
            expect(myInvalidPlayingCard.rank).to.equal(@0);
        });
    });
    
    describe(@"valid suit with with designated initializer", ^{
        __block FISPlayingCard *myValidPlayingCard;
        __block FISPlayingCard *myInvalidPlayingCard;
        
        beforeAll(^{
            myValidPlayingCard = [[FISPlayingCard alloc] initWithSuit:@"♥" Rank:@13];
            myInvalidPlayingCard = [[FISPlayingCard alloc] initWithSuit:@"X" Rank:@14];
        });
        
        it(@"valid suits should return suit",^{
            expect(myValidPlayingCard.suit).to.equal(@"♥");
        });
        it(@"invalid suits should return an empty string",^{
            expect(myInvalidPlayingCard.suit).to.equal(@"");
        });
    });
    
    describe(@"valid suit with setter", ^{
        __block FISPlayingCard *myValidPlayingCard;
        __block FISPlayingCard *myInvalidPlayingCard;
        
        beforeAll(^{
            myValidPlayingCard = [[FISPlayingCard alloc] init];
            myInvalidPlayingCard = [[FISPlayingCard alloc] init];
        });
        
        it(@"valid suits should return a valid suit",^{
            myValidPlayingCard.suit = @"♥";
            expect(myValidPlayingCard.suit).to.equal(@"♥");
        });
        
        it(@"invalid suits should return an empty string",^{
            myInvalidPlayingCard.suit = @"X";
            expect(myInvalidPlayingCard.suit).to.equal(@"");
        });
    });
});

SpecEnd
