//
//  Country.h
//  Hymns-HD
//
//  Created by Vlad Tsepelev on 03.07.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Country : NSObject{
    NSString * _name;
    NSString * _code;
}

@property(nonatomic, strong) NSString * code;
@property(nonatomic, strong) NSString * name;

-(id) initWithName: (NSString *) name andCode: (NSString*) code;
+(id) countryWithName: (NSString *) name andCode: (NSString*) code;
+(NSArray *) allCountries;

@end
