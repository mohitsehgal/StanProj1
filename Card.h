//
//  Card.h
//  StanProj1
//
//  Created by S N on 12/20/13.
//  Copyright (c) 2013 S N. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property(strong) NSString *contents;


@property (nonatomic) BOOL chosen;
@property (nonatomic) BOOL matched;

-(int)match:(NSArray *)otherCards;

@end
