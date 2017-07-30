//
//  CTDefaultService.m
//  Cartrawler
//
//  Created by Elton Mendes Viera on 28/07/2017.
//  Copyright © 2017 EltonMendes. All rights reserved.
//

#import "CTDefaultService.h"
#import <AFNetworking/AFNetworking.h>

static NSString * const baseURLKey = @"baseURL";

@implementation CTDefaultService

+ (void)performGETRequestWithPath:(NSString *)Path
                      withSuccess:(ServiceSucessBlock)success
                      withFailure:(ServiceFailureBlock)failure {
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];

    [manager GET:[self urlWithPath:Path] parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
        if(success) {
            success(responseObject);
        }
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        if(failure) {
            failure(error);
        }
    }];
}

#pragma mark - Private Methods

+ (NSString *)urlWithPath:(NSString *)Path {
    return [[self baseURLString] stringByAppendingString:Path];
}

+ (NSString *)baseURLString {
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:baseURLKey];
}

@end
