//
//  Card.m
//  StanProj1
//
//  Created by S N on 12/20/13.
//  Copyright (c) 2013 S N. All rights reserved.
//

#import "Card.h"
@interface Card()

@end	

@implementation Card

-(int)match:(NSArray *)otherCards
{
    int score=0;
    
    
    
    for (Card *card in otherCards) {
    
        if ([card.contents isEqualToString:self.contents]) {
            score=1;
        }
    }
    return score;
}
@end
