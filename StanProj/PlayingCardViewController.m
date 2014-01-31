//
//  PlayingCardViewController.m
//  StanProj1
//
//  Created by S N on 1/1/14.
//  Copyright (c) 2014 S N. All rights reserved.
//

#import "PlayingCardViewController.h"
#import "PlayingCardDeck.h"

@interface PlayingCardViewController ()

@end

@implementation PlayingCardViewController


-(Deck*)createDeck
{
    return [[PlayingCardDeck alloc] init];
}

@end
