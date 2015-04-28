//
//  FormularyParentVC.m
//  ACDSprototype3
//
//  Created by dev1 on 4/15/15.
//  Copyright (c) 2015 dev1. All rights reserved.
//

#import "FormularyParentVC.h"
#import "FormularyTVC.h"
#import "Pharmaceuticals.h"

#define CHILD1_WIDTH_FACTOR (1.0/1.0)
#define CHILD1_HEIGHT_FACTOR (1.0/1.0)

#define UIColorFromHex(hexValue) \
    [UIColor \
        colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0 \
               green:((float)((hexValue & 0x00FF00) >>  8))/255.0 \
                blue:((float)((hexValue & 0x0000FF) >>  0))/255.0 \
               alpha:1.0]

@interface FormularyParentVC ()

@property CGFloat statusBarFrameSizeHeight;
@property CGFloat navBarFrameSizeHeight;
@property CGFloat toolBarFrameSizeHeight;
@property CGFloat tabBarFrameSizeHeight;
@property CGFloat totalUnusableWidth;
@property CGFloat totalUnusableHeight;
@property CGFloat topOffset;

@property (strong, nonatomic) FormularyTVC *formularyVC;
@property BOOL isFormularyVisible;

@property BOOL isDebugSet;

@end

@implementation FormularyParentVC

- (void)viewDidLoad {
    NSLog(@"%%FormularyParentVC-I-TRACE, -viewDidLoad called.");
    
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.navigationItem.title = @"Formulary Information";
    [self addToolbarItems];
    [self getFrameSizeHeights];
    [self getTopOffset];
    [self getUnusableDimensions];
    self.isDebugSet = NO;
    self.formularyDict = [Pharmaceuticals knownPharmaceuticals];
    
    /**
     *  Center VC. (UITableViewController - Drugs)-----------------------------------------------------------|
     */
    self.formularyVC = [[FormularyTVC alloc] initWithDataDict:self.formularyDict];
    self.formularyVC.view.frame =
    CGRectMake(
               0,
               _topOffset,
               roundf((self.view.frame.size.width - _totalUnusableWidth) * CHILD1_WIDTH_FACTOR),
               roundf((self.view.frame.size.height - _totalUnusableHeight) * CHILD1_HEIGHT_FACTOR)
               );
    self.formularyVC.view.backgroundColor = UIColorFromHex(0x0000FF);
    [self.view addSubview:self.formularyVC.view];
    [self addChildViewController:self.formularyVC];
    self.isFormularyVisible = YES;
    /* TODO
    self.formularyVC.view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addConstraint:
     [NSLayoutConstraint
      constraintWithItem:self.formularyVC.view
      attribute:NSLayoutAttributeWidth
      relatedBy:NSLayoutRelationEqual
      toItem:self.view
      attribute:NSLayoutAttributeWidth
      multiplier:1
      constant:0]];
    [self.view addConstraint:
     [NSLayoutConstraint
      constraintWithItem:self.formularyVC.view
      attribute:NSLayoutAttributeHeight
      relatedBy:NSLayoutRelationEqual
      toItem:self.view
      attribute:NSLayoutAttributeHeight
      multiplier:1
      constant:0]];
    */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addToolbarItems {
    NSLog(@"%%FormularyParentVC-I-TRACE, -addToolbarItems called.");
    
    UIBarButtonItem *btn1 = [[UIBarButtonItem alloc] initWithTitle:@"Btn1"
                                                             style:UIBarButtonItemStyleDone
                                                            target:self
                                                            action:@selector(doButton1:)];
    
    UIBarButtonItem *btn2 = [[UIBarButtonItem alloc] initWithTitle:@"Btn2"
                                                             style:UIBarButtonItemStyleDone
                                                            target:self
                                                            action:@selector(doButton2:)];
    
    UIBarButtonItem *spacer = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
                                                                            target:self
                                                                            action:nil];
    
    NSArray *buttons = [NSArray arrayWithObjects:spacer, btn1, spacer, btn2, spacer, nil];
    
    self.toolbarItems = buttons;
}

- (void)doButton1:(UIButton *)sender {
    NSLog(@"%%FormularyParentVC-I-TRACE, -doButton1 called.");
    
}

- (void)doButton2:(UIButton *)sender {
    NSLog(@"%%FormularyParentVC-I-TRACE, -doButton2 called.");
    
}

- (void)getFrameSizeHeights {
    NSLog(@"%%FormularyParentVC-I-TRACE, -getFrameSizeHeights called.");
    
    self.statusBarFrameSizeHeight = [UIApplication sharedApplication].statusBarFrame.size.height;
    self.navBarFrameSizeHeight = self.navigationController.navigationBar.frame.size.height;
    self.toolBarFrameSizeHeight = self.navigationController.toolbar.frame.size.height;
    self.tabBarFrameSizeHeight = self.tabBarController.tabBar.frame.size.height;
}

- (void)getTopOffset {
    NSLog(@"%%FormularyParentVC-I-TRACE, -getTopOffset called.");
    
    // Offset height from the top of the view.
    //
    self.topOffset = (
                      self.statusBarFrameSizeHeight +
                      self.navBarFrameSizeHeight
                      );
}

- (void)getUnusableDimensions {
    NSLog(@"%%FormularyParentVC-I-TRACE, -getUnusableDimensions called.");
    
    // Total unusable view dimensions.
    //
    self.totalUnusableWidth = (0);
    self.totalUnusableHeight = (
                                self.statusBarFrameSizeHeight +
                                self.navBarFrameSizeHeight +
                                self.toolBarFrameSizeHeight +
                                self.tabBarFrameSizeHeight
                                );
}

@end
