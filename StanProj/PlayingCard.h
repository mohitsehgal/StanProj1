//
//  PlayingCard.h
//  StanProj1
//
//  Created by S N on 12/20/13.
//  Copyright (c) 2013 S N. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card
@property (strong,nonatomic) NSString   *suit;
@property (nonatomic) NSUInteger rank;
+ (NSArray*) validSuits;
+ (NSUInteger) maxRank;

@end
