//
//  CardMatchingGame.m
//  StanProj1
//
//  Created by S N on 12/21/13.
//  Copyright (c) 2013 S N. All rights reserved.
//

#import "CardMatchingGame.h"

@interface CardMatchingGame()
@property (readwrite,nonatomic) NSInteger score;
@property (nonatomic,strong) NSMutableArray *cards;//of Cards
@end

@implementation CardMatchingGame

-(NSMutableArray* ) cards
{
    if (!_cards) {
        _cards=[[NSMutableArray alloc] init];
        
    }
    return _cards;
}


-(instancetype)initWithCardCount:(NSUInteger)count usingDeck:(Deck*) deck
{
    self=[super init];
    if (self) {
        for (int i=0; i<count; i++) {
            Card *card=[deck drawCardAtRandom];
            if (card) {
                
                self.cards[i]=card;
            }
            else
            {
                self=nil;
                break;
            }
        }
    }
    return self;
}

-(Card*) cardAtIndex:(NSUInteger)index
{
    return index< [self.cards count] ? self.cards[index]:nil;
}

static const int MISMATCH_PENALTY=2;
static const int MATCH_BONUS=4;
static const int COST_TO_CHOOSE=1;


-(void) chooseCardAtIndex:(NSUInteger) index
{
    Card *card=[self cardAtIndex:index];
    
    if (!card.matched) {
        if (card.chosen) {
            card.chosen=NO;
        }
        else
        {
            //match against another card
            for (Card *otherCard in self.cards) {
                    if(otherCard.chosen && !otherCard.matched)
                    {
                        int matchScore=[card  match:@[otherCard]];
                        if (matchScore) {
                            self.score+=matchScore*MATCH_BONUS;
                            card.matched=YES;
                            otherCard.matched=YES;
                        }
                        else
                        {
                            self.score-=MISMATCH_PENALTY;
                            otherCard.chosen=NO;
                        }
                           break;
                    }
             
            }
            self.score-=COST_TO_CHOOSE;
            card.chosen=YES;
        }
    }
}



@end
