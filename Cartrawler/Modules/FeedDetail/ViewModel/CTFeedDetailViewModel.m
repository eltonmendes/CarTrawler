//
//  CTFeedDetailViewModel.m
//  Cartrawler
//
//  Created by Elton Mendes Viera on 29/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import "CTFeedDetailViewModel.h"
#import "CTVehicle.h"

@interface CTFeedDetailViewModel ()

@property (nonatomic , strong, readonly) CTVehicle *vehicle;

@end

@implementation CTFeedDetailViewModel

- (instancetype)initWithVehicle:(CTVehicle *)currentVehicle {
    if(self = [super init]) {
        _vehicle = currentVehicle;
    }
    return self;
}

- (NSString *)screenTitle {
    return self.vehicle.modelName;
}

- (NSString *)airConditionText {
    return self.vehicle.hasAirCondition ? NSLocalizedString(@"common.yes", @"") : NSLocalizedString(@"common.no", @"");
}

- (NSString *)priceText {
    
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    [numberFormatter setCurrencyCode:self.vehicle.currencyCode];
    NSString *totalPriceString = [numberFormatter stringFromNumber:[NSNumber numberWithDouble:self.vehicle.totalAmount]];
    
    return totalPriceString;
}

@end
