//
//  Pharmaceuticals.m
//  ACDSprototype3
//
//  Created by Mario Abruzzi on 4/28/15.
//  Copyright (c) 2015 dev1. All rights reserved.
//

#import "Pharmaceuticals.h"
#import "Pharmaceutical.h"

@implementation Pharmaceuticals

+ (NSDictionary *)knownPharmaceuticals {
    NSLog(@"%%Pharmaceuticals-I-TRACE, +knownPharmaceuticals called.");
    
/*
 *----------------------------------------------------------------------------------------------------------------------------------------|
 */
    // Fluids
    Pharmaceutical *drug1 = [[Pharmaceutical alloc] initWithTitle:@"Maintenance Fluid" dose:@80 doseUnit:@"mL/kg"];
    Pharmaceutical *drug2 = [[Pharmaceutical alloc] initWithTitle:@"Maintenance Fluid" dose:@100 doseUnit:@"mL/kg"];
    Pharmaceutical *drug3 = [[Pharmaceutical alloc] initWithTitle:@"Maintenance Fluid" dose:@120 doseUnit:@"mL/kg"];
    Pharmaceutical *drug4 = [[Pharmaceutical alloc] initWithTitle:@"Fluid Bolus" dose:@10 doseUnit:@"mL/kg"];
    Pharmaceutical *drug5 = [[Pharmaceutical alloc] initWithTitle:@"Fluid Bolus" dose:@20 doseUnit:@"mL/kg"];
    // Glucose Control
    Pharmaceutical *drug10 = [[Pharmaceutical alloc] initWithTitle:@"D10 (Neonates)" dose:@2 doseUnit:@"mL/kg"];
    // RSI
    Pharmaceutical *drug20 = [[Pharmaceutical alloc] initWithTitle:@"Lidocaine (10 mg/mL)" dose:@1 doseUnit:@"mg/kg"];
    Pharmaceutical *drug21 = [[Pharmaceutical alloc] initWithTitle:@"Atropine (0.1 mg/mL)" dose:@0.02 doseUnit:@"mg/kg"];
    Pharmaceutical *drug22 = [[Pharmaceutical alloc] initWithTitle:@"Etomidate" dose:@0.3 doseUnit:@"mg/kg" conc:@40 concUnit:@"mg/20mL"];
    Pharmaceutical *drug23 = [[Pharmaceutical alloc] initWithTitle:@"Etomidate" dose:@0.2 doseUnit:@"mg/kg" conc:@40 concUnit:@"mg/20mL"];
    Pharmaceutical *drug24 = [[Pharmaceutical alloc] initWithTitle:@"Rocuronium (10 mg/mL)" dose:@0.5 doseUnit:@"mg/kg"];
    // Narcotics
    Pharmaceutical *drug30 = [[Pharmaceutical alloc] initWithTitle:@"Versed" dose:@0.1 doseUnit:@"mg/kg"];
    Pharmaceutical *drug31 = [[Pharmaceutical alloc] initWithTitle:@"Fentanyl" dose:@1 doseUnit:@"mcg/kg"];
    Pharmaceutical *drug32 = [[Pharmaceutical alloc] initWithTitle:@"Ativan" dose:@0.05 doseUnit:@"mg/kg"];
    Pharmaceutical *drug33 = [[Pharmaceutical alloc] initWithTitle:@"Morphine" dose:@0.1 doseUnit:@"mg/kg"];
    // Sedatives
    Pharmaceutical *drug40 = [[Pharmaceutical alloc] initWithTitle:@"Placeholder"];
    // Resuscitation
    Pharmaceutical *drug50 = [[Pharmaceutical alloc] initWithTitle:@"Placeholder"];
    // Drips
    Pharmaceutical *drug60 = [[Pharmaceutical alloc] initWithTitle:@"Placeholder"];
    // Miscellaneous
    Pharmaceutical *drug70 = [[Pharmaceutical alloc] initWithTitle:@"Placeholder"];
    
    NSDictionary *pharmaceuticals = [NSDictionary dictionaryWithObjectsAndKeys:
                                     @[
                                       drug1,
                                       drug2,
                                       drug3,
                                       drug4,
                                       drug5
                                       ], @"Fluids",
                                     @[
                                       drug10
                                       ], @"Glucose Control",
                                     @[
                                       drug20,
                                       drug21,
                                       drug22,
                                       drug23,
                                       drug24
                                       ], @"RSI",
                                     @[
                                       drug30,
                                       drug31,
                                       drug32,
                                       drug33
                                       ], @"Narcotics",
                                     @[
                                       drug40
                                       ], @"Sedatives",
                                     @[
                                       drug50
                                       ], @"Resuscitation",
                                     @[
                                       drug60
                                       ], @"Drips",
                                     @[
                                       drug70
                                       ], @"Miscellaneous",
                                     nil];
    
    return pharmaceuticals;
}

@end
