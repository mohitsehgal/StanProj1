//
//  ViewController.m
//  StanProj
//
//  Created by S N on 12/20/13.
//  Copyright (c) 2013 S N. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface ViewController ()
@property (nonatomic,strong) Deck *deck;
@property (nonatomic,strong) CardMatchingGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

@end

@implementation ViewController

-(CardMatchingGame*)game
{
    if (!_game) {
        _game=[[CardMatchingGame alloc]initWithCardCount:[self.cardButtons count] usingDeck:[self createDeck]];
        
    }
    return _game;
}

-(Deck *)deck
{
    if(!_deck) _deck= [self createDeck];
    return _deck;
}

-(Deck*) createDeck
{
    return nil;
}


- (IBAction)touchCardButton:(UIButton*)sender {
    int cardIndex=[self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:cardIndex];
    [self updateUI];
}

-(void) updateUI
{
    for (UIButton *cardButton in self.cardButtons){
        int cardIndex=[self.cardButtons indexOfObject:cardButton];
        Card *card =[self.game  cardAtIndex:cardIndex];
        [cardButton setTitle:[self getContentsForCard:card] forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundImageForCard:card]
                              forState:UIControlStateNormal];
        cardButton.enabled=!card.matched;
        self.scoreLabel.text=[NSString stringWithFormat:@"Score:%d",self.game.score];
    }
}
- (NSString*) getContentsForCard:(Card*)card
{
    return card.chosen?card.contents:@"";
    
}
-(UIImage * )backgroundImageForCard:(Card*)card
{
    return [UIImage imageNamed:card.chosen?@"cardfront":@"cardback"];
}

@end
