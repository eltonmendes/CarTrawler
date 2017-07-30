//
//  CTFeedDetailViewController.m
//  Cartrawler
//
//  Created by Elton Mendes Viera on 29/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import <SDWebImage/UIImageView+WebCache.h>
#import "CTFeedDetailViewController.h"
#import "CTFeedDetailViewModel.h"
#import "CTVehicle.h"

@interface CTFeedDetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *vehicleImageView;
@property (weak, nonatomic) IBOutlet UILabel *vehicleModelLabel;
@property (weak, nonatomic) IBOutlet UILabel *vehicleTransmissionLabel;
@property (weak, nonatomic) IBOutlet UILabel *vehiclePassengerLabel;
@property (weak, nonatomic) IBOutlet UILabel *vehicleBaggageLabel;
@property (weak, nonatomic) IBOutlet UILabel *vehiclePriceLabel;
@property (weak, nonatomic) IBOutlet UILabel *vehicleCodeLabel;
@property (weak, nonatomic) IBOutlet UILabel *vehicleDoorLabel;
@property (weak, nonatomic) IBOutlet UILabel *vehicleFuelLabel;
@property (weak, nonatomic) IBOutlet UILabel *vehicleAirLabel;
@property (weak, nonatomic) IBOutlet UILabel *vehicleDriveLabel;

@end

@implementation CTFeedDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupScreen];
}

- (void)setupScreen {
    self.title = [self.viewModel screenTitle];
    CTVehicle *vehicle = self.viewModel.vehicle;
    
    [self.vehicleImageView sd_setImageWithURL:vehicle.pictureURL];
    self.vehicleModelLabel.text = vehicle.modelName;
    self.vehicleTransmissionLabel.text = vehicle.transmissionType;
    self.vehiclePassengerLabel.text = vehicle.passengerQuantity;
    self.vehicleBaggageLabel.text = vehicle.baggageQuantity;
    self.vehiclePriceLabel.text = self.viewModel.priceText;
    self.vehicleAirLabel.text = self.viewModel.airConditionText;
    self.vehicleFuelLabel.text = vehicle.fuelType;
    self.vehicleDoorLabel.text = vehicle.doorCount;
    self.vehicleCodeLabel.text = vehicle.code;
    self.vehicleDriveLabel.text = vehicle.driveType;

}

@end
