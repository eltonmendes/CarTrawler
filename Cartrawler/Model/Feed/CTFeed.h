//
//  CTFeed.h
//  Cartrawler
//
//  Created by Elton Mendes Viera on 28/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import "CTBaseModel.h"

@class CTAvailableVendors, CTRentalScore;

@interface CTFeed : CTBaseModel

@property (nonatomic , strong, readonly) NSArray <CTAvailableVendors*> *availableVendors;
@property (nonatomic , strong, readonly) CTRentalScore *rentalScore;

@end
