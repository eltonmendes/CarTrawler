//
//  CTAvailableVendors.h
//  Cartrawler
//
//  Created by Elton Mendes Viera on 28/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import "CTBaseModel.h"

@class CTVehicle , CTVendor;

@interface CTAvailableVendors : CTBaseModel

@property (nonatomic, strong, readonly) CTVendor *vendor;
@property (nonatomic, strong, readonly) NSArray <CTVehicle*> *vehicles;

@end
