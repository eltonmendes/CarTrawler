//
//  CTServiceTests.m
//  Cartrawler
//
//  Created by Elton Mendes Viera on 30/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CTFeedService.h"

@interface CTServiceTests : XCTestCase

@end

@implementation CTServiceTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testShouldReturnFeedFromServer {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Should return valid feed from server"];
    
    [CTFeedService fetchFeedWithSuccess:^(CTFeed *feed) {
        [expectation fulfill];
    } withFailure:^(NSError *error) {
       
    }];    
    [self waitForExpectationsWithTimeout:5.0 handler:nil];
}



@end
