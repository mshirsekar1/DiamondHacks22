//
//  MainViewController.h
//  OfficialDiamondHacks-ios
//
//  Created by Gabriel Costa de Oliveira on 3/27/21.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MainViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *diamondLabel;
@property (weak, nonatomic) IBOutlet UIButton *hackButton;
@property (weak, nonatomic) IBOutlet UIButton *secretButton;

@end

NS_ASSUME_NONNULL_END
