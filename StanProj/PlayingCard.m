//
//  PlayingCard.m
//  StanProj1
//
//  Created by S N on 12/20/13.
//  Copyright (c) 2013 S N. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard
@synthesize suit=_suit;

-(int)match:(NSArray *)otherCards
{
    int score=0;
    
    if ([otherCards count]==1) {
        PlayingCard *otherCard=[otherCards firstObject];
        
        if([self.suit isEqualToString: otherCard.suit])
        {
            score=1;
        }
        else if( self.rank== otherCard.rank )
        {
            score=4;
        }
    }
    
    return score;
}

-(NSString*) contents
{
    NSArray *rankStrings= [PlayingCard rankStrings];
    return 	[ rankStrings[self.rank] stringByAppendingString:self.suit];
}

+(NSArray*) rankStrings
{
    return @[@"?",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}


-(void)setRank:(NSUInteger)rank
{
    
    if (rank<= [PlayingCard maxRank]) {
        _rank=rank;
        
    }
    
}


+ (NSArray*) validSuits
{
    return @[@"♥",@"♦",@"♠",@"♣"];
}


-(void)setSuit:(NSString *)suit
{
    if([ [PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

-(NSString*)suit
{
    return _suit ? _suit : @"?";
}

+ (NSUInteger) maxRank
{
    return [[self rankStrings] count]-1;
}
@end
