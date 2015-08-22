//
//  ViewController.m
//  TimerUIapplication
//
//  Created by Aref Abedjooy on 5/30/1394 AP.
//  Copyright (c) 1394 Aref Abedjooy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize isselected;

- (void)viewDidLoad {
    [super viewDidLoad];
    

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnNextPageto:(id)sender {
    [self performSegueWithIdentifier:@"goNextPage" sender:nil];
}
@end
