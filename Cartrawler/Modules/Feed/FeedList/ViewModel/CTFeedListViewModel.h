//
//  CTFeedListViewModel.h
//  Cartrawler
//
//  Created by Elton Mendes Viera on 28/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CTFeedService.h"

@class CTVehicle;

@interface CTFeedListViewModel : NSObject

- (void)fetchFeedWithSuccess:(FeedSuccessBlock)success
                 withFailure:(ServiceFailureBlock)failure;


#pragma mark - TableView

- (NSString *)titleForHeader;
- (NSString *)titleForSection:(NSUInteger)vendorSection;
- (NSUInteger)numberOfRowsForVendorSection:(NSUInteger)vendorSection;
- (NSUInteger)numberOfSections;
- (CGFloat)heightForRow;
- (CTVehicle *)vehicleForIndexPath:(NSIndexPath *)indexPath;

@end
