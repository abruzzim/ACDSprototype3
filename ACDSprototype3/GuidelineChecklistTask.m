//
//  GuidelineChecklistTask.m
//  ACDSprototype3
//
//  Created by Mario Abruzzi on 4/25/15.
//  Copyright (c) 2015 dev1. All rights reserved.
//

#import "GuidelineChecklistTask.h"

@implementation GuidelineChecklistTask

- (instancetype)initWithTitle:(NSString *)aTitle {
    NSLog(@"%%GuidelineChecklistTask-I-TRACE, -initWithTitle called.");
    
    if (self = [super init]) {
        self.title = aTitle;
    }
    return self;
}

@end
