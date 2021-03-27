//
//  SecretViewController.m
//  OfficialDiamondHacks-ios
//
//  Created by Gabriel Costa de Oliveira on 3/27/21.
//

#import "SecretViewController.h"
#import "Diamond.h"

@interface SecretViewController()

@end

@implementation SecretViewController

- (void) viewDidLoad
{
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self setupUI];
}

- (void) setupUI
{
    self.navigationItem.title = @"Secret View";
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new]
                             forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.shadowImage = [UIImage new];
    [self.navigationController.navigationBar setTranslucent:YES];
    
    
    self.array = [[NSMutableArray alloc] init];
    Diamond *d1 = [Diamond new];
    d1.price = 1000;
    d1.name = @"";
    
    Diamond *d2 = [Diamond new];
    d2.price = 1000;
    d2.name = @"Pink Panther";
    
    [self.array addObject:d1];
    [self.array addObject:d2];
    
    self.tableContent = self.array;
}

- (void) setTableContent:(NSArray *)tableContent
{
    _tableContent = tableContent;
    [self.tableView reloadData];
}

#
#pragma mark - Table view
#

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.tableContent.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    Diamond *d1 = [self.tableContent objectAtIndex:indexPath.row];
    cell.textLabel.text = d1.name;
    
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.tableContent = [NSArray new];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"STOP!" message:@"You can't steal this diamond!" preferredStyle:UIAlertControllerStyleAlert];
    //
    [alertController addAction:[UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        nil;
    }]];
    //
    dispatch_async(dispatch_get_main_queue(), ^ {
        [self presentViewController:alertController animated:YES completion:nil];
    });
}

@end
