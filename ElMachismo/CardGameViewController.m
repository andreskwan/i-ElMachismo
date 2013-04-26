//
//  machismoViewController.m
//  ElMachismo
//
//  Created by Andres Kwan on 4/22/13.
//  Copyright (c) 2013 com.stanfor. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()
//weak because this is displayed, this class do not control it
//is strong by the view
@property (weak, nonatomic) IBOutlet UILabel                        *flipsLabel;
//counts flips
@property (nonatomic)int                                            flipcount;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray  *cardButtons;
@end

@implementation CardGameViewController

- (IBAction)flipCard:(UIButton *)sender
{
    sender.selected = !sender.isSelected;
    self.flipcount++;
}

- (void)setFlipcount:(int)flipcount
{
    _flipcount = flipcount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d",self.flipcount];
}

@end