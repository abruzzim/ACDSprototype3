//
//  Pharmaceutical.h
//  ACDSprototype3
//
//  Created by Mario Abruzzi on 4/28/15.
//  Copyright (c) 2015 dev1. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pharmaceutical : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSNumber *dose;
@property (strong, nonatomic) NSString *doseUnit;
@property (strong, nonatomic) NSNumber *conc;
@property (strong, nonatomic) NSString *concUnit;
@property (strong, nonatomic) NSString *comment;

- (instancetype)initWithTitle:(NSString *)aTitle;

- (instancetype)initWithTitle:(NSString *)aTitle
                         dose:(NSNumber *)aDose
                     doseUnit:(NSString *)aDoseUnit;

- (instancetype)initWithTitle:(NSString *)aTitle
                         dose:(NSNumber *)aDose
                     doseUnit:(NSString *)aDoseUnit
                         conc:(NSNumber *)aConc
                     concUnit:(NSString *)aConcUnit;

@end
