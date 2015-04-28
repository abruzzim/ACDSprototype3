//
//  FormularyTVC.m
//  ACDSprototype3
//
//  Created by Mario Abruzzi on 4/28/15.
//  Copyright (c) 2015 dev1. All rights reserved.
//

#import "FormularyTVC.h"
#import "Pharmaceutical.h"

#define HDR_FONT_SIZE 15.0f
#define HDR_FONT_TYPE "HelveticaNeue-Light"

@interface FormularyTVC ()

@property NSDictionary *drugs;
@property NSArray *drugSectionTitles;
@property NSArray *drugIndexTitles;

@end

@implementation FormularyTVC

- (instancetype)initWithDataDict:(NSDictionary *)drugItems {
    NSLog(@"%%FormularyTVC-I-TRACE, -initWithDataDict called.");
    
    self = [super init];
    if (self) {
        self.drugs = drugItems;
    }
    return self;
}

- (void)viewDidLoad {
    NSLog(@"%%FormularyTVC-I-TRACE, -viewDidLoad called.");

    [super viewDidLoad];
    self.drugSectionTitles = [[self.drugs allKeys] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    self.drugIndexTitles = @[@"A", @"K", @"S", @"Z"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    NSLog(@"%%FormularyTVC-I-TRACE, -numberOfSectionsInTableView: called.");
    
    // Return the number of sections.
    //
    return [self.drugSectionTitles count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog(@"%%FormularyTVC-I-TRACE, -tableView:numberOfRowsInSection: called.");
    
    // Return the number of rows in a section.
    //
    NSString *sectionKey = [self.drugSectionTitles objectAtIndex:section];
    NSArray *sectionDrugs = [self.drugs objectForKey:sectionKey];
    return [sectionDrugs count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSLog(@"%%FormularyTVC-I-TRACE, -tableView:titleForHeaderInSection: called.");
    
    return [self.drugSectionTitles objectAtIndex:section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    // Return a reusable table-view cell object located by its identifier.
    //
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DrugCell"];
    
    
    // Instantiate a reusable table-view cell object if one does not exist.
    //
    if (nil == cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:@"DrugCell"];
    }

    // Configure the cell.
    //
    NSString *sectionTitle = [self.drugSectionTitles objectAtIndex:indexPath.section];
    NSArray *sectionDrugs = [self.drugs objectForKey:sectionTitle];
    Pharmaceutical *drug = [sectionDrugs objectAtIndex:indexPath.row];
    cell.textLabel.text = drug.title;
    return cell;
}

#pragma mark - TODO

- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    NSLog(@"%%FormularyTVC-I-TRACE, -sectionIndexTitlesForTableView: called.");
    
    // Ask the data source to return the titles for the sections for a table view.
    //
    return self.drugIndexTitles;
}

#pragma mark - Table view delegate

/**
 * Tell the delegate that a header view is about to be displayed for the specified section.
 */
- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section {
    NSLog(@"%%FormularyTVC-I-TRACE, -tableView:willDisplayHeaderView:forSection: called.");
    
    UITableViewHeaderFooterView *headerFooterView = (UITableViewHeaderFooterView *)view;
    headerFooterView.backgroundView.backgroundColor = [UIColor lightGrayColor];
    headerFooterView.textLabel.font = [UIFont fontWithName:@HDR_FONT_TYPE size:HDR_FONT_SIZE];
    headerFooterView.textLabel.textColor = [UIColor whiteColor];
    headerFooterView.textLabel.textAlignment = NSTextAlignmentNatural;
}

@end
