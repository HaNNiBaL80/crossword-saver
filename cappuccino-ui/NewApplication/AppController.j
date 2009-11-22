/*
 * AppController.j
 * NewApplication
 *
 * Created by You on July 5, 2009.
 * Copyright 2009, Your Company All rights reserved.
 */

@import <Foundation/CPObject.j>

@import "GridView.j"
@import "SquareView.j"
@import "Square.j"

@implementation AppController : CPObject
{
   CPCollectionView gridView;
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    var theWindow = [[CPWindow alloc] initWithContentRect:CGRectMakeZero() styleMask:CPBorderlessBridgeWindowMask],
        contentView = [theWindow contentView];
    // Create and Center our Container View
    var view = [[CPView alloc] initWithFrame:CGRectMake(0, 0, 700.0, 424.0)];
    [view setCenter:[contentView center]];
    
    [view setBackgroundColor:[CPColor colorWithRed:212.0 / 255.0 green:221.0 / 255.0 blue:230.0 / 255.0 alpha:1.0]];
    
    [view setAutoresizingMask:CPViewMinXMargin | CPViewMaxXMargin | CPViewMinYMargin | CPViewMaxYMargin];
    
    [contentView addSubview:view];

    gridView = [[GridView alloc] initWithFrame:CGRectMake(0.0, 0.0, 176.0, 400.0)];

    var squares = [Square getExampleGrid];

    [gridView setContent:squares];

}

@end
