//
//  ViewController.h
//  StanProj
//
//  Created by S N on 12/20/13.
//  Copyright (c) 2013 S N. All rights reserved.
//
//abstract class

#import <UIKit/UIKit.h>
#import "Deck.h"


@interface ViewController : UIViewController



//abdtract method must implement it
-(Deck*) createDeck;

@end
