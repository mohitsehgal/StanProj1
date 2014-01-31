//
//  PlayingCardDeck.m
//  StanProj1
//
//  Created by S N on 12/20/13.
//  Copyright (c) 2013 S N. All rights reserved.
//

#import "PlayingCardDeck.h"


@implementation PlayingCardDeck
- (instancetype)init
{
    if (self=[super init]) {
        
        for (NSString* suit in [PlayingCard validSuits]) {
            for (NSUInteger rank=1; rank<=[PlayingCard maxRank];rank++) {
                PlayingCard *card=[[PlayingCard alloc] init];
                card.rank=rank;
                card.suit=suit;
                [self addCard:card];
            }
        }
        
    }
    return self;
}
@end
