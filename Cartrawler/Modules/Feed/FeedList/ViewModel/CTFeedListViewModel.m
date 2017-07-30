//
//  CTFeedListViewModel.m
//  Cartrawler
//
//  Created by Elton Mendes Viera on 28/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CTFeedListViewModel.h"
#import "CTAvailableVendors.h"
#import "CTFeed.h"
#import "CTVendor.h"
#import "CTRentalScore.h"
#import "NSDate+CTCustomDate.h"

@interface CTFeedListViewModel ()

@property(nonatomic , strong) NSArray<CTAvailableVendors *> *dataSource;
@property(nonatomic , strong) CTRentalScore *currentRentalScore;

@end

@implementation CTFeedListViewModel

static CGFloat kDefaultCellHeight = 210;
static CGFloat kEmptyCelltHeight = 0;

- (void)fetchFeedWithSuccess:(FeedSuccessBlock)success
                 withFailure:(ServiceFailureBlock)failure {
    [CTFeedService fetchFeedWithSuccess:^(CTFeed *feed) {
        [self sortVendors:feed.availableVendors];
        self.currentRentalScore = feed.rentalScore;
        if(success) {
            success();
        }        
    } withFailure:failure];
}

#pragma mark - Private Methods 

- (void)sortVendors:(NSArray<CTAvailableVendors*> *)vendors {
    NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"vendor.name" ascending:YES];
    NSArray *sortedAray = [vendors sortedArrayUsingDescriptors:@[sortDescriptor]];
    self.dataSource = [sortedAray copy];
}

#pragma mark - TableView 

- (NSString *)titleForHeader {
    return [NSString stringWithFormat:@"%@ : %@\n%@: %@", NSLocalizedString(@"feed.pickup", @"") , [self.currentRentalScore.pickUpDateTime formattedDate] , NSLocalizedString(@"feed.return", @"") , [self.currentRentalScore.returnDateTime formattedDate]];
}

- (NSString *)titleForSection:(NSUInteger)vendorSection {
    CTAvailableVendors *availableVendor = self.dataSource[vendorSection];
    return availableVendor.vendor.name;
}

- (NSUInteger)numberOfRowsForVendorSection:(NSUInteger)vendorSection {
    CTAvailableVendors *vendor = self.dataSource[vendorSection];
    return vendor.vehicles.count;
}

- (NSUInteger)numberOfSections {
    return self.dataSource.count;
}

- (CGFloat)heightForRow {
    return self.dataSource.count > 0 ? kDefaultCellHeight : kEmptyCelltHeight;
}

- (CTVehicle *)vehicleForIndexPath:(NSIndexPath *)indexPath {
    CTAvailableVendors *vendor = self.dataSource[indexPath.section];
    return vendor.vehicles[indexPath.row];
}

@end
