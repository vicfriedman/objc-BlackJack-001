//
//  FISPlayingcard.m
//  BlackJack
//
//  Created by Victoria Friedman on 8/13/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import "FISPlayingcard.h"

@implementation FISPlayingCard

- (id) initWithSuit:(NSString *)suit Rank:(NSNumber *)rank{
    self = [super init];
    if (self){
        NSInteger intRank = [rank integerValue];
        if (intRank > 13){
            _rank = @0;
        }
        else {
            _rank = rank;
        }
    }
    
    if ([suit isEqualToString:@"♥"] || [suit isEqualToString:@"♠"] || [suit isEqualToString:@"♣"] || [suit isEqualToString:@"♦"]  ){
        _suit = suit;
    }
    else {
        _suit = @"";
    }
    return self;
}

- (void)setRank:(NSNumber *)rank{
    NSInteger intRank = [rank integerValue];
    if (intRank > 13){
        _rank = @0;
    }
    else {
        _rank = rank;
    }
}

- (void)setSuit:(NSString *)suit{
    if ([suit isEqualToString:@"♥"] || [suit isEqualToString:@"♠"] || [suit isEqualToString:@"♣"] || [suit isEqualToString:@"♦"]  ){
        _suit = suit;
    }
    else {
    _suit = @"";
    }
}

@end
