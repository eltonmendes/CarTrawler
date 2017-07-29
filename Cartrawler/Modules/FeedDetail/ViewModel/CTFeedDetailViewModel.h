//
//  CTFeedDetailViewModel.h
//  Cartrawler
//
//  Created by Elton Mendes Viera on 29/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CTVehicle;

@interface CTFeedDetailViewModel : NSObject

- (instancetype)initWithVehicle:(CTVehicle *)currentVehicle NS_DESIGNATED_INITIALIZER;

- (instancetype)init NS_UNAVAILABLE;


#pragma mark - UI

- (CTVehicle *)vehicle;
- (NSString *)screenTitle;
- (NSString *)priceText;
- (NSString *)airConditionText;


@end
