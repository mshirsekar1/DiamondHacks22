//
//  MainViewController.m
//  OfficialDiamondHacks-ios
//
//  Created by Gabriel Costa de Oliveira on 3/27/21.
//

#import "MainViewController.h"

@interface MainViewController()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}

- (void) setupUI
{
    self.navigationItem.title = @"Main View";
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new]
                             forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.shadowImage = [UIImage new];
    [self.navigationController.navigationBar setTranslucent:YES];
    
    UIBarButtonItem * refresh = [[UIBarButtonItem alloc] initWithImage:[UIImage systemImageNamed:@"clock.arrow.circlepath"] style:UIBarButtonItemStylePlain target:self action:@selector(refreshAction)];
    refresh.tintColor = [UIColor labelColor];
    self.navigationItem.rightBarButtonItem = refresh;
    
    self.navigationItem.backBarButtonItem.tintColor = [UIColor labelColor];
}

- (void) refreshAction
{
    self.secretButton.hidden = YES;
    self.diamondLabel.textColor = [UIColor labelColor];
}
- (IBAction)hackButtonAction:(id)sender
{
    self.secretButton.hidden = NO;
    self.diamondLabel.textColor = [UIColor systemPinkColor];
}
- (IBAction)secretButtonAction:(id)sender {
    [self performSegueWithIdentifier:@"toSecretView" sender:self];
}

@end
