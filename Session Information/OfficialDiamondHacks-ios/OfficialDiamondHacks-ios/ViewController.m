//
//  ViewController.m
//  OfficialDiamondHacks-ios
//
//  Created by Gabriel Costa de Oliveira on 3/27/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated
{
    [NSTimer scheduledTimerWithTimeInterval:0.8
        target:self
        selector:@selector(delaySart)
        userInfo:nil
        repeats:NO];
}

- (void) delaySart
{
    [super viewDidAppear:YES];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    [self takeToStoryBoard:storyboard withIdentifier:@"MainNavigationController"];
}

- (void) takeToStoryBoard:(UIStoryboard *)storyBoard withIdentifier:(NSString *)identifier
{
    UINavigationController *vc = (UINavigationController *)[storyBoard instantiateViewControllerWithIdentifier:identifier];
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:vc animated:YES completion:nil];
}

@end
