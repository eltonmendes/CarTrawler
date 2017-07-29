//
//  CTFeedTableViewCell.m
//  Cartrawler
//
//  Created by Elton Mendes Viera on 29/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import <SDWebImage/UIImageView+WebCache.h>
#import "CTFeedTableViewCell.h"
#import "CTVehicle.h"

@interface CTFeedTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *vehicleImageView;
@property (weak, nonatomic) IBOutlet UILabel *vehicleNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *transmissionLabel;
@property (weak, nonatomic) IBOutlet UILabel *doorsLabel;
@property (weak, nonatomic) IBOutlet UILabel *baggageLabel;
@property (weak, nonatomic) IBOutlet UILabel *fuelLabel;

@end

@implementation CTFeedTableViewCell

- (void)setupCellWithVehicle:(CTVehicle *)vehicle {
    
    self.vehicleNameLabel.text = vehicle.modelName;
    [self.vehicleImageView sd_setImageWithURL:vehicle.pictureURL];
    self.transmissionLabel.text = vehicle.transmissionType;
    self.doorsLabel.text = vehicle.doorCount;
    self.baggageLabel.text = vehicle.baggageQuantity;
    self.fuelLabel.text = vehicle.fuelType;
}

@end
