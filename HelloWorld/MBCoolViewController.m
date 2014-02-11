//
//  MBCoolViewController.m
//  HelloWorld
//
//  Created by Mark Bryant on 2/6/14.
//  Copyright (c) 2014 Mark Bryant. All rights reserved.
//

#import "MBCoolViewController.h"

@interface MBCoolViewController ()
@property (weak, nonatomic) IBOutlet UILabel *whoaLabel;

@end

@implementation MBCoolViewController

- (IBAction)buttonPressed:(id)sender {
    NSString *urlString = @"http://localhost:3000/apiTest";
    NSURL *url = [[NSURL alloc] initWithString:urlString];
    NSLog(@"%@", urlString);
    
    [NSURLConnection sendAsynchronousRequest:[[NSURLRequest alloc] initWithURL:url] queue:[[NSOperationQueue alloc] init] completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
        NSlog(data);
    }];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
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

@end
