//
//  CTFeedTableViewController.m
//  Cartrawler
//
//  Created by Elton Mendes Viera on 28/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import "CTFeedTableViewController.h"
#import "CTFeedListViewModel.h"
#import "CTFeedTableViewCell.h"
#import "CTFeedDetailViewController.h"
#import "CTFeedDetailViewModel.h"
#import "MBProgressHUD.h"
#import "NSError+CTErrorHandler.h"


@interface CTFeedTableViewController ()

@property (nonatomic, strong, readonly) CTFeedListViewModel *viewModel;
@property (weak, nonatomic) IBOutlet UILabel *headerTitleLabel;

@end

@implementation CTFeedTableViewController

static NSString * const kFeedCellIndentifier = @"FeedCell";
static NSString * const kFeedDetailSegueIndentifier = @"FeedDetail";

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        _viewModel = [CTFeedListViewModel new];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self fetchFeed];
}

- (void)fetchFeed {
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    __weak typeof(self) weakSelf = self;
    [self.viewModel fetchFeedWithSuccess:^{
        [MBProgressHUD hideHUDForView:weakSelf.view animated:YES];
        [weakSelf.tableView reloadData];
        [weakSelf setupHeader];
    } withFailure:^(NSError *error) {
        [MBProgressHUD hideHUDForView:weakSelf.view animated:YES];
        [error handleErrorIntoController:self];
    }];
}

- (void)setupHeader {
    self.headerTitleLabel.text = self.viewModel.titleForHeader;
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(CTVehicle *)vehicle {
     CTFeedDetailViewController *feedDetailViewController = segue.destinationViewController;
    feedDetailViewController.viewModel = [[CTFeedDetailViewModel alloc] initWithVehicle:vehicle];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.viewModel.numberOfSections;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.viewModel numberOfRowsForVendorSection:section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CTFeedTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kFeedCellIndentifier forIndexPath:indexPath];
    
    CTVehicle *vehicle = [self.viewModel vehicleForIndexPath:indexPath];
    [cell setupCellWithVehicle:vehicle];
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [self.viewModel titleForSection:section];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    CTVehicle *vehicle = [self.viewModel vehicleForIndexPath:indexPath];
    [self performSegueWithIdentifier:kFeedDetailSegueIndentifier sender:vehicle];
}

@end
