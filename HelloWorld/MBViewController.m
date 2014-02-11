//
//  MBViewController.m
//  HelloWorld
//
//  Created by Mark Bryant on 2/5/14.
//  Copyright (c) 2014 Mark Bryant. All rights reserved.
//

#import "MBViewController.h"
#import "MBCoolViewController.h"

@interface MBViewController ()

@property (weak, nonatomic) IBOutlet UILabel *awesomeLabel;

@end

@implementation MBViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"hello hello";
        
        UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(doneWasPressed:)];
        self.navigationItem.rightBarButtonItem = doneButton;
        
    }
    return self;
}

- (IBAction)doneWasPressed:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Cool title" message:@"even cooler message" delegate:nil cancelButtonTitle:@"Okiedokie" otherButtonTitles:nil];
    [alert show];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    self.awesomeLabel.text = @"even cooler";
    MBCoolViewController *coolView = [[MBCoolViewController alloc] initWithNibName:@"CoolView" bundle:[NSBundle mainBundle]];
    [self.navigationController pushViewController:coolView animated:YES];
}
@end
