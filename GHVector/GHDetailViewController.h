//
//  GHDetailViewController.h
//  GHVector
//
//  Created by ricky cancro on 3/25/14.
//  Copyright (c) 2014 My name is kuma. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GHDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
