//
//  Deck.h
//  StanProj1
//
//  Created by S N on 12/20/13.
//  Copyright (c) 2013 S N. All rights reserved.
//
#import "Card.h"
#import <Foundation/Foundation.h>

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
-(void)addCard:(Card *)card ;
-(Card*)drawCardAtRandom;
@end
