//
//  CardMatchingGame.h
//  StanProj1
//
//  Created by S N on 12/21/13.
//  Copyright (c) 2013 S N. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"
@interface CardMatchingGame : NSObject

//Designated Initializer
-(instancetype)initWithCardCount:(NSUInteger)count usingDeck:(Deck*) deck;
-(void) chooseCardAtIndex:(NSUInteger) index;
-(Card*) cardAtIndex:(NSUInteger)index;


@property (nonatomic,readonly) NSInteger score;
@end
