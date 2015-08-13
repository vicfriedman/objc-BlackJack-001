//
//  FISPlayingcard.h
//  BlackJack
//
//  Created by Victoria Friedman on 8/13/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISPlayingCard : NSObject

@property (nonatomic) NSString *suit;

@property (nonatomic) NSNumber *rank;

- (id) initWithSuit:(NSString *)suit Rank:(NSNumber *)rank;

@end
