//
//  Guidelines.m
//  ACDSprototype3
//
//  Created by Mario Abruzzi on 4/25/15.
//  Copyright (c) 2015 dev1. All rights reserved.
//

#import "Guidelines.h"
#import "GuidelineChecklistTask.h"

@implementation Guidelines

+ (NSArray *)knownGuidelines {
    NSLog(@"%%Guidelines-I-TRACE, +knownGuidelines called.");
    
/*
 *--------------------------------------------------- SEPSIS ------------------------------------------------------|
 */

    // 0th Interval
    GuidelineChecklistTask *task1 = [[GuidelineChecklistTask alloc] initWithTitle:@"Assess Patient"];
    GuidelineChecklistTask *task2 = [[GuidelineChecklistTask alloc] initWithTitle:@"Give Oxygen"];
    // 1st Interval
    GuidelineChecklistTask *task3 = [[GuidelineChecklistTask alloc] initWithTitle:@"Place 2 IVs / IO"];
    GuidelineChecklistTask *task4 = [[GuidelineChecklistTask alloc] initWithTitle:@"Draw POC Labs"];
    GuidelineChecklistTask *task5 = [[GuidelineChecklistTask alloc] initWithTitle:@"Draw Hospital Labs"];
    GuidelineChecklistTask *task6 = [[GuidelineChecklistTask alloc] initWithTitle:@"Give Fluids"];
    GuidelineChecklistTask *task7 = [[GuidelineChecklistTask alloc] initWithTitle:@"Assess POC Results"];
    GuidelineChecklistTask *task8 = [[GuidelineChecklistTask alloc] initWithTitle:@"Treat Hypocalcemia"];
    GuidelineChecklistTask *task9 = [[GuidelineChecklistTask alloc] initWithTitle:@"Treat Hypoglycemia"];
    GuidelineChecklistTask *task10 = [[GuidelineChecklistTask alloc] initWithTitle:@"Treat Acidosis"];
    GuidelineChecklistTask *task11 = [[GuidelineChecklistTask alloc] initWithTitle:@"Order Ceftriaxone"];
    GuidelineChecklistTask *task12 = [[GuidelineChecklistTask alloc] initWithTitle:@"Order Vancomycin"];
    GuidelineChecklistTask *task13 = [[GuidelineChecklistTask alloc] initWithTitle:@"Order Inotropes"];
    GuidelineChecklistTask *task14 = [[GuidelineChecklistTask alloc] initWithTitle:@"Treat Hypotension"];
    // 2nd Interval
    GuidelineChecklistTask *task15 = [[GuidelineChecklistTask alloc] initWithTitle:@"Reassess Patient"];
    GuidelineChecklistTask *task16 = [[GuidelineChecklistTask alloc] initWithTitle:@"Treat Adrenal Insufficiency"];
    GuidelineChecklistTask *task17 = [[GuidelineChecklistTask alloc] initWithTitle:@"Treat Hypotension"];
    GuidelineChecklistTask *task18 = [[GuidelineChecklistTask alloc] initWithTitle:@"Draw Blood Culture"];
    GuidelineChecklistTask *task19 = [[GuidelineChecklistTask alloc] initWithTitle:@"Give Antibiotics"];
    // 3rd Interval
    GuidelineChecklistTask *task20 = [[GuidelineChecklistTask alloc] initWithTitle:@"Give Fluids"];
    
    NSDictionary *tasks1 =[NSDictionary dictionaryWithObjectsAndKeys:
                           @[
                             task1,
                             task2
                             ], @"0th Interval: Zero Time",
                           @[
                             task3,
                             task4,
                             task5,
                             task6,
                             task7,
                             task8,
                             task9,
                             task10,
                             task11,
                             task12,
                             task13,
                             task14
                             ], @"1st Interval: 0-15 Minutes",
                           @[
                             task15,
                             task16,
                             task17,
                             task18,
                             task19
                             ], @"2nd Interval: 15-60 Minutes",
                           @[
                             task20
                             ], @"3rd Interval: 1-4 Hours",
                           nil];

    
    NSDictionary *guideline1 = [NSDictionary dictionaryWithObjectsAndKeys:
                                @"Sepsis", @"title",
                                @"SepsisFlowchart3", @"pngFile",
                                [NSValue valueWithCGSize:CGSizeMake(768, 4914)], @"size",
                                [NSValue valueWithCGRect:CGRectMake(0, 0, 768, 4914)], @"frame",
                                tasks1, @"checklist",
                                @"sepsis", @"htmlFile",
                                nil];
/*
 *----------------------------------------------------- DKA --------------------------------------------------------|
 */
    // 0th Interval
    GuidelineChecklistTask *task100 = [[GuidelineChecklistTask alloc] initWithTitle:@"DKA Placeholder"];
    
    NSDictionary *tasks2 =[NSDictionary dictionaryWithObjectsAndKeys:
                           @[
                             task100
                             ], @"0th Interval: Zero Time",
                           nil];

    NSDictionary *guideline2 = [NSDictionary dictionaryWithObjectsAndKeys:
                                @"Diabetic Ketoacidosis", @"title",
                                @"", @"pngFile",
                                [NSValue valueWithCGSize:CGSizeMake(768, 4096)], @"size",
                                [NSValue valueWithCGRect:CGRectMake(0, 0, 768, 4096)], @"frame",
                                tasks2, @"checklist",
                                @"dka", @"htmlFile",
                                nil];
    
/*
 *----------------------------------------------------- TBI --------------------------------------------------------|
 */
    // 0th Interval
    GuidelineChecklistTask *task200 = [[GuidelineChecklistTask alloc] initWithTitle:@"TBI Placeholder"];
    
    NSDictionary *tasks3 =[NSDictionary dictionaryWithObjectsAndKeys:
                           @[
                             task200
                             ], @"0th Interval: Zero Time",
                           nil];
    
    NSDictionary *guideline3 = [NSDictionary dictionaryWithObjectsAndKeys:
                                @"Traumatic Brain Injury", @"title",
                                @"", @"pngFile",
                                [NSValue valueWithCGSize:CGSizeMake(768, 4096)], @"size",
                                [NSValue valueWithCGRect:CGRectMake(0, 0, 768, 4096)], @"frame",
                                tasks3, @"checklist",
                                @"tbi", @"htmlFile",
                                nil];
    
/*
 *----------------------------------------------------- AST --------------------------------------------------------|
 */
    // 0th Interval
    GuidelineChecklistTask *task300 = [[GuidelineChecklistTask alloc] initWithTitle:@"Asthma Placeholder"];
    
    NSDictionary *tasks4 =[NSDictionary dictionaryWithObjectsAndKeys:
                           @[
                             task300
                             ], @"0th Interval: Zero Time",
                           nil];
    
    NSDictionary *guideline4 = [NSDictionary dictionaryWithObjectsAndKeys:
                                @"Status Asthmaticus", @"title",
                                @"", @"pngFile",
                                [NSValue valueWithCGSize:CGSizeMake(768, 4096)], @"size",
                                [NSValue valueWithCGRect:CGRectMake(0, 0, 768, 4096)], @"frame",
                                tasks4, @"checklist",
                                @"asthma", @"htmlFile",
                                nil];
    
/*
 *----------------------------------------------------- EPI --------------------------------------------------------|
 */
    // 0th Interval
    GuidelineChecklistTask *task400 = [[GuidelineChecklistTask alloc] initWithTitle:@"Epilepsy Placeholder"];
    
    NSDictionary *tasks5 =[NSDictionary dictionaryWithObjectsAndKeys:
                           @[
                             task400
                             ], @"0th Interval: Zero Time",
                           nil];
    
    NSDictionary *guideline5 = [NSDictionary dictionaryWithObjectsAndKeys:
                                @"Status Epilepticus", @"title",
                                @"", @"pngFile",
                                [NSValue valueWithCGSize:CGSizeMake(768, 4096)], @"size",
                                [NSValue valueWithCGRect:CGRectMake(0, 0, 768, 4096)], @"frame",
                                tasks5, @"checklist",
                                @"epilepsy", @"htmlFile",
                                nil];
    
    NSArray *guidelines = [[NSArray alloc] initWithObjects:
                           guideline1,
                           guideline2,
                           guideline3,
                           guideline4,
                           guideline5,
                           nil];
    
    return guidelines;
}

@end
