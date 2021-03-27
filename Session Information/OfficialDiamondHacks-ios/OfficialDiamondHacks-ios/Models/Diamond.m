//
//  Diamond.m
//  OfficialDiamondHacks-ios
//
//  Created by Gabriel Costa de Oliveira on 3/27/21.
//

#import "Diamond.h"

@implementation Diamond

- (id)init
{
    self = [super init];
    
    if (self) {
        _price = -1;
        _name = @"";
    }
    
    return self;
}

- (void) setName:(NSString *)name
{
    if ([name isEqualToString:@""]) {
        _name = @"Nothing";
    } else {
        _name = name;
    }
}

- (void) setPrice:(NSInteger)price
{
    
}

@end
