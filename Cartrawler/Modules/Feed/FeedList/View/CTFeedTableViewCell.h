//
//  CTFeedTableViewCell.h
//  Cartrawler
//
//  Created by Elton Mendes Viera on 29/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CTVehicle;

@interface CTFeedTableViewCell : UITableViewCell

- (void)setupCellWithVehicle:(CTVehicle *)vehicle;

@end
