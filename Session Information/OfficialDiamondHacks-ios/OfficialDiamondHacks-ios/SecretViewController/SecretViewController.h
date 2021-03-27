//
//  SecretViewController.h
//  OfficialDiamondHacks-ios
//
//  Created by Gabriel Costa de Oliveira on 3/27/21.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecretViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *tableContent;
@property (strong, nonatomic) NSMutableArray *array;

@end

NS_ASSUME_NONNULL_END
