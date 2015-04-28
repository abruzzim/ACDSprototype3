//
//  Pharmaceutical.m
//  ACDSprototype3
//
//  Created by Mario Abruzzi on 4/28/15.
//  Copyright (c) 2015 dev1. All rights reserved.
//

#import "Pharmaceutical.h"

@implementation Pharmaceutical

- (instancetype)initWithTitle:(NSString *)aTitle {
    NSLog(@"%%Pharmaceutical-I-TRACE, -initWithTitle: called.");
    
    if (self = [super init]) {
        self.title = aTitle;
    }
    return self;
}

- (instancetype)initWithTitle:(NSString *)aTitle
                         dose:(NSNumber *)aDose
                     doseUnit:(NSString *)aDoseUnit {
    NSLog(@"%%Pharmaceutical-I-TRACE, -initWithTitle:dose:doseUnit: called.");
    
    if (self = [super init]) {
        self.title = aTitle;
        self.dose = aDose;
        self.doseUnit = aDoseUnit;
    }
    return self;
}

- (instancetype)initWithTitle:(NSString *)aTitle
                         dose:(NSNumber *)aDose
                     doseUnit:(NSString *)aDoseUnit
                         conc:(NSNumber *)aConc
                     concUnit:(NSString *)aConcUnit {
    NSLog(@"%%Pharmaceutical-I-TRACE, -initWithTitle:dose:doseUnit:conc:concUnit: called.");
    
    if (self = [super init]) {
        self.title = aTitle;
        self.dose = aDose;
        self.doseUnit = aDoseUnit;
        self.conc = aConc;
        self.concUnit = aConcUnit;
    }
    return self;
}

@end
