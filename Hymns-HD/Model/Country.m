//
//  Country.m
//  Hymns-HD
//
//  Created by Vlad Tsepelev on 03.07.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Country.h"

@implementation Country

static NSMutableArray * countries;

@synthesize name = _name, code = _code;

-(id) initWithName: (NSString *) name andCode: (NSString*) code{
    self = [super init];
    if (self) {
        self.name = name;
        self.code = code;
    }
    return self;
}
+(id) countryWithName: (NSString *) name andCode: (NSString*) code{
    return [[Country alloc]initWithName:name andCode:code];
}



+(NSArray *)allCountries{
    
    
    if(!countries){
        countries = [[NSMutableArray alloc]init];

        {
            [countries addObject:[Country countryWithName:@"Andorra" andCode:@"AD"]];
            [countries addObject:[Country countryWithName:@"United Arab Emirates" andCode:@"AE"]];
            [countries addObject:[Country countryWithName:@"Afghanistan" andCode:@"AF"]];
            [countries addObject:[Country countryWithName:@"Antigua and Barbuda" andCode:@"AG"]];
            [countries addObject:[Country countryWithName:@"Anguilla" andCode:@"AI"]];
            [countries addObject:[Country countryWithName:@"Albania" andCode:@"AL"]];
            [countries addObject:[Country countryWithName:@"Armenia" andCode:@"AM"]];
            [countries addObject:[Country countryWithName:@"Netherlands Antilles" andCode:@"AN"]];
            [countries addObject:[Country countryWithName:@"Angola" andCode:@"AO"]];
            //[countries addObject:[Country countryWithName:@"Asia/Pacific Region" andCode:@"AP"]];
            //[countries addObject:[Country countryWithName:@"Antarctica" andCode:@"AQ"]];
            [countries addObject:[Country countryWithName:@"Argentina" andCode:@"AR"]];
            [countries addObject:[Country countryWithName:@"American Samoa" andCode:@"AS"]];
            [countries addObject:[Country countryWithName:@"Austria" andCode:@"AT"]];
            [countries addObject:[Country countryWithName:@"Australia" andCode:@"AU"]];
            [countries addObject:[Country countryWithName:@"Aruba" andCode:@"AW"]];
            [countries addObject:[Country countryWithName:@"Aland Islands" andCode:@"AX"]];
            [countries addObject:[Country countryWithName:@"Azerbaijan" andCode:@"AZ"]];
            [countries addObject:[Country countryWithName:@"Bosnia and Herzegovina" andCode:@"BA"]];
            [countries addObject:[Country countryWithName:@"Barbados" andCode:@"BB"]];
            [countries addObject:[Country countryWithName:@"Bangladesh" andCode:@"BD"]];
            [countries addObject:[Country countryWithName:@"Belgium" andCode:@"BE"]];
            [countries addObject:[Country countryWithName:@"Burkina Faso" andCode:@"BF"]];
            [countries addObject:[Country countryWithName:@"Bulgaria" andCode:@"BG"]];
            [countries addObject:[Country countryWithName:@"Bahrain" andCode:@"BH"]];
            [countries addObject:[Country countryWithName:@"Burundi" andCode:@"BI"]];
            [countries addObject:[Country countryWithName:@"Benin" andCode:@"BJ"]];
            //[countries addObject:[Country countryWithName:@"Saint Bartelemey" andCode:@"BL"]];
            [countries addObject:[Country countryWithName:@"Bermuda" andCode:@"BM"]];
            [countries addObject:[Country countryWithName:@"Brunei Darussalam" andCode:@"BN"]];
            [countries addObject:[Country countryWithName:@"Bolivia" andCode:@"BO"]];
            //[countries addObject:[Country countryWithName:@"Bonaire, Saint Eustatius and Saba" andCode:@"BQ"]];
            [countries addObject:[Country countryWithName:@"Brazil" andCode:@"BR"]];
            [countries addObject:[Country countryWithName:@"Bahamas" andCode:@"BS"]];
            [countries addObject:[Country countryWithName:@"Bhutan" andCode:@"BT"]];
            //[countries addObject:[Country countryWithName:@"Bouvet Island" andCode:@"BV"]];
            [countries addObject:[Country countryWithName:@"Botswana" andCode:@"BW"]];
            [countries addObject:[Country countryWithName:@"Belarus" andCode:@"BY"]];
            [countries addObject:[Country countryWithName:@"Belize" andCode:@"BZ"]];
            [countries addObject:[Country countryWithName:@"Canada" andCode:@"CA"]];
            [countries addObject:[Country countryWithName:@"Cocos (Keeling) Islands" andCode:@"CC"]];
            [countries addObject:[Country countryWithName:@"Democratic Republic of Congo" andCode:@"CD"]];
            [countries addObject:[Country countryWithName:@"Central African Republic" andCode:@"CF"]];
            [countries addObject:[Country countryWithName:@"Republic of the Congo" andCode:@"CG"]];
            [countries addObject:[Country countryWithName:@"Switzerland" andCode:@"CH"]];
            [countries addObject:[Country countryWithName:@"Cote d'Ivoire" andCode:@"CI"]];
            [countries addObject:[Country countryWithName:@"Cook Islands" andCode:@"CK"]];
            [countries addObject:[Country countryWithName:@"Chile" andCode:@"CL"]];
            [countries addObject:[Country countryWithName:@"Cameroon" andCode:@"CM"]];
            [countries addObject:[Country countryWithName:@"China" andCode:@"CN"]];
            [countries addObject:[Country countryWithName:@"Colombia" andCode:@"CO"]];
            [countries addObject:[Country countryWithName:@"Costa Rica" andCode:@"CR"]];
            [countries addObject:[Country countryWithName:@"Cuba" andCode:@"CU"]];
            [countries addObject:[Country countryWithName:@"Cape Verde" andCode:@"CV"]];
            //[countries addObject:[Country countryWithName:@"Curacao" andCode:@"CW"]];
            [countries addObject:[Country countryWithName:@"Christmas Island" andCode:@"CX"]];
            [countries addObject:[Country countryWithName:@"Cyprus" andCode:@"CY"]];
            [countries addObject:[Country countryWithName:@"Czech Republic" andCode:@"CZ"]];
            [countries addObject:[Country countryWithName:@"Germany" andCode:@"DE"]];
            [countries addObject:[Country countryWithName:@"Djibouti" andCode:@"DJ"]];
            [countries addObject:[Country countryWithName:@"Denmark" andCode:@"DK"]];
            [countries addObject:[Country countryWithName:@"Dominica" andCode:@"DM"]];
            [countries addObject:[Country countryWithName:@"Dominican Republic" andCode:@"DO"]];
            [countries addObject:[Country countryWithName:@"Algeria" andCode:@"DZ"]];
            [countries addObject:[Country countryWithName:@"Ecuador" andCode:@"EC"]];
            [countries addObject:[Country countryWithName:@"Estonia" andCode:@"EE"]];
            [countries addObject:[Country countryWithName:@"Egypt" andCode:@"EG"]];
            //[countries addObject:[Country countryWithName:@"Western Sahara" andCode:@"EH"]];
            [countries addObject:[Country countryWithName:@"Eritrea" andCode:@"ER"]];
            [countries addObject:[Country countryWithName:@"Spain" andCode:@"ES"]];
            [countries addObject:[Country countryWithName:@"Ethiopia" andCode:@"ET"]];
            //[countries addObject:[Country countryWithName:@"Europe" andCode:@"EU"]];
            [countries addObject:[Country countryWithName:@"Finland" andCode:@"FI"]];
            [countries addObject:[Country countryWithName:@"Fiji" andCode:@"FJ"]];
            [countries addObject:[Country countryWithName:@"Falkland Islands (Malvinas)" andCode:@"FK"]];
            [countries addObject:[Country countryWithName:@"Micronesia" andCode:@"FM"]];
            [countries addObject:[Country countryWithName:@"Faroe Islands" andCode:@"FO"]];
            [countries addObject:[Country countryWithName:@"France" andCode:@"FR"]];
            [countries addObject:[Country countryWithName:@"Gabon" andCode:@"GA"]];
            [countries addObject:[Country countryWithName:@"Great Britain" andCode:@"UK"]];
            [countries addObject:[Country countryWithName:@"Grenada" andCode:@"GD"]];
            [countries addObject:[Country countryWithName:@"Georgia" andCode:@"GE"]];
            //[countries addObject:[Country countryWithName:@"French Guiana" andCode:@"GF"]];
            [countries addObject:[Country countryWithName:@"Guernsey" andCode:@"GG"]];
            [countries addObject:[Country countryWithName:@"Ghana" andCode:@"GH"]];
            [countries addObject:[Country countryWithName:@"Gibraltar" andCode:@"GI"]];
            [countries addObject:[Country countryWithName:@"Greenland" andCode:@"GL"]];
            [countries addObject:[Country countryWithName:@"Gambia" andCode:@"GM"]];
            [countries addObject:[Country countryWithName:@"Guinea" andCode:@"GN"]];
            //[countries addObject:[Country countryWithName:@"Guadeloupe" andCode:@"GP"]];
            [countries addObject:[Country countryWithName:@"Equatorial Guinea" andCode:@"GQ"]];
            [countries addObject:[Country countryWithName:@"Greece" andCode:@"GR"]];
            [countries addObject:[Country countryWithName:@"South Georgia and Sandwich Islands" andCode:@"GS"]];
            [countries addObject:[Country countryWithName:@"Guatemala" andCode:@"GT"]];
            [countries addObject:[Country countryWithName:@"Guam" andCode:@"GU"]];
            [countries addObject:[Country countryWithName:@"Guinea-Bissau" andCode:@"GW"]];
            [countries addObject:[Country countryWithName:@"Guyana" andCode:@"GY"]];
            [countries addObject:[Country countryWithName:@"Hong Kong" andCode:@"HK"]];
            //[countries addObject:[Country countryWithName:@"Heard Island and McDonald Islands" andCode:@"HM"]];
            [countries addObject:[Country countryWithName:@"Honduras" andCode:@"HN"]];
            [countries addObject:[Country countryWithName:@"Croatia" andCode:@"HR"]];
            [countries addObject:[Country countryWithName:@"Haiti" andCode:@"HT"]];
            [countries addObject:[Country countryWithName:@"Hungary" andCode:@"HU"]];
            [countries addObject:[Country countryWithName:@"Indonesia" andCode:@"ID"]];
            [countries addObject:[Country countryWithName:@"Ireland" andCode:@"IE"]];
            [countries addObject:[Country countryWithName:@"Israel" andCode:@"IL"]];
            [countries addObject:[Country countryWithName:@"Vatican City" andCode:@"VH"]];
            [countries addObject:[Country countryWithName:@"Isle of Man" andCode:@"IM"]];
            [countries addObject:[Country countryWithName:@"India" andCode:@"IN"]];
            [countries addObject:[Country countryWithName:@"British Indian Ocean Territory" andCode:@"IO"]];
            [countries addObject:[Country countryWithName:@"Iraq" andCode:@"IQ"]];
            [countries addObject:[Country countryWithName:@"Iran" andCode:@"IR"]];
            [countries addObject:[Country countryWithName:@"Iceland" andCode:@"IS"]];
            [countries addObject:[Country countryWithName:@"Italy" andCode:@"IT"]];
            [countries addObject:[Country countryWithName:@"Jersey" andCode:@"JE"]];
            //[countries addObject:[Country countryWithName:@"Yugoslavia" andCode:@"YU"]];
            [countries addObject:[Country countryWithName:@"Jamaica" andCode:@"JM"]];
            [countries addObject:[Country countryWithName:@"Jordan" andCode:@"JO"]];
            [countries addObject:[Country countryWithName:@"Japan" andCode:@"JP"]];
            [countries addObject:[Country countryWithName:@"Kenya" andCode:@"KE"]];
            [countries addObject:[Country countryWithName:@"Kyrgyzstan" andCode:@"KG"]];
            [countries addObject:[Country countryWithName:@"Cambodia" andCode:@"KH"]];
            [countries addObject:[Country countryWithName:@"Kiribati" andCode:@"KI"]];
            [countries addObject:[Country countryWithName:@"Comoros" andCode:@"KM"]];
            [countries addObject:[Country countryWithName:@"Saint Kitts and Nevis" andCode:@"KN"]];
            [countries addObject:[Country countryWithName:@"North Korea" andCode:@"KP"]];
            [countries addObject:[Country countryWithName:@"South Korea" andCode:@"KR"]];
            [countries addObject:[Country countryWithName:@"Kuwait" andCode:@"KW"]];
            [countries addObject:[Country countryWithName:@"Cayman Islands" andCode:@"KY"]];
            [countries addObject:[Country countryWithName:@"Kazakhstan" andCode:@"KZ"]];
            [countries addObject:[Country countryWithName:@"Laos" andCode:@"LA"]];
            [countries addObject:[Country countryWithName:@"Lebanon" andCode:@"LB"]];
            [countries addObject:[Country countryWithName:@"Saint Lucia" andCode:@"LC"]];
            [countries addObject:[Country countryWithName:@"Liechtenstein" andCode:@"LI"]];
            [countries addObject:[Country countryWithName:@"Sri Lanka" andCode:@"LK"]];
            [countries addObject:[Country countryWithName:@"Liberia" andCode:@"LR"]];
            [countries addObject:[Country countryWithName:@"Lesotho" andCode:@"LS"]];
            [countries addObject:[Country countryWithName:@"Lithuania" andCode:@"LT"]];
            [countries addObject:[Country countryWithName:@"Luxembourg" andCode:@"LU"]];
            [countries addObject:[Country countryWithName:@"Latvia" andCode:@"LV"]];
            [countries addObject:[Country countryWithName:@"Libyan Arab Jamahiriya" andCode:@"LY"]];
            [countries addObject:[Country countryWithName:@"Morocco" andCode:@"MA"]];
            [countries addObject:[Country countryWithName:@"Monaco" andCode:@"MC"]];
            [countries addObject:[Country countryWithName:@"Moldova" andCode:@"MD"]];
            [countries addObject:[Country countryWithName:@"Montenegro" andCode:@"ME"]];
            //[countries addObject:[Country countryWithName:@"Saint Martin" andCode:@"MF"]];
            [countries addObject:[Country countryWithName:@"Madagascar" andCode:@"MG"]];
            [countries addObject:[Country countryWithName:@"Marshall Islands" andCode:@"MH"]];
            [countries addObject:[Country countryWithName:@"Macedonia" andCode:@"MK"]];
            [countries addObject:[Country countryWithName:@"Mali" andCode:@"ML"]];
            //[countries addObject:[Country countryWithName:@"Myanmar" andCode:@"MM"]];
            [countries addObject:[Country countryWithName:@"Mongolia" andCode:@"MN"]];
            [countries addObject:[Country countryWithName:@"Macao" andCode:@"MO"]];
            [countries addObject:[Country countryWithName:@"Northern Mariana Islands" andCode:@"MP"]];
            [countries addObject:[Country countryWithName:@"Martinique" andCode:@"MQ"]];
            [countries addObject:[Country countryWithName:@"Mauritania" andCode:@"MR"]];
            [countries addObject:[Country countryWithName:@"Montserrat" andCode:@"MS"]];
            [countries addObject:[Country countryWithName:@"Malta" andCode:@"MT"]];
            [countries addObject:[Country countryWithName:@"Mauritius" andCode:@"MU"]];
            [countries addObject:[Country countryWithName:@"Maldives" andCode:@"MV"]];
            [countries addObject:[Country countryWithName:@"Malawi" andCode:@"MW"]];
            [countries addObject:[Country countryWithName:@"Mexico" andCode:@"MX"]];
            [countries addObject:[Country countryWithName:@"Malaysia" andCode:@"MY"]];
            [countries addObject:[Country countryWithName:@"Mozambique" andCode:@"MZ"]];
            [countries addObject:[Country countryWithName:@"Namibia" andCode:@"NA"]];
            //[countries addObject:[Country countryWithName:@"New Caledonia" andCode:@"NC"]];
            [countries addObject:[Country countryWithName:@"Niger" andCode:@"NE"]];
            [countries addObject:[Country countryWithName:@"Norfolk Island" andCode:@"NF"]];
            [countries addObject:[Country countryWithName:@"Nigeria" andCode:@"NG"]];
            [countries addObject:[Country countryWithName:@"Nicaragua" andCode:@"NI"]];
            [countries addObject:[Country countryWithName:@"Netherlands" andCode:@"NL"]];
            [countries addObject:[Country countryWithName:@"Burma (Myanmar)" andCode:@"NM"]];
            [countries addObject:[Country countryWithName:@"Norway" andCode:@"NO"]];
            [countries addObject:[Country countryWithName:@"Nepal" andCode:@"NP"]];
            [countries addObject:[Country countryWithName:@"Nauru" andCode:@"NR"]];
            [countries addObject:[Country countryWithName:@"Niue" andCode:@"NU"]];
            [countries addObject:[Country countryWithName:@"New Zealand" andCode:@"NZ"]];
            [countries addObject:[Country countryWithName:@"Oman" andCode:@"OM"]];
            [countries addObject:[Country countryWithName:@"Panama" andCode:@"PA"]];
            [countries addObject:[Country countryWithName:@"Peru" andCode:@"PE"]];
            [countries addObject:[Country countryWithName:@"French Polynesia" andCode:@"PF"]];
            [countries addObject:[Country countryWithName:@"Papua New Guinea" andCode:@"PG"]];
            [countries addObject:[Country countryWithName:@"Philippines" andCode:@"PH"]];
            [countries addObject:[Country countryWithName:@"Pakistan" andCode:@"PK"]];
            [countries addObject:[Country countryWithName:@"Poland" andCode:@"PL"]];
            [countries addObject:[Country countryWithName:@"Saint Pierre and Miquelon" andCode:@"PM"]];
            [countries addObject:[Country countryWithName:@"Pitcairn Islands" andCode:@"PN"]];
            [countries addObject:[Country countryWithName:@"Puerto Rico" andCode:@"PR"]];
            //[countries addObject:[Country countryWithName:@"Palestinian Territory" andCode:@"PS"]];
            [countries addObject:[Country countryWithName:@"Portugal" andCode:@"PT"]];
            [countries addObject:[Country countryWithName:@"Palau" andCode:@"PW"]];
            [countries addObject:[Country countryWithName:@"Paraguay" andCode:@"PY"]];
            [countries addObject:[Country countryWithName:@"Qatar" andCode:@"QA"]];
            //[countries addObject:[Country countryWithName:@"Reunion" andCode:@"RE"]];
            [countries addObject:[Country countryWithName:@"Romania" andCode:@"RO"]];
            [countries addObject:[Country countryWithName:@"Serbia" andCode:@"RS"]];
            [countries addObject:[Country countryWithName:@"Russian Federation" andCode:@"RU"]];
            [countries addObject:[Country countryWithName:@"Rwanda" andCode:@"RW"]];
            [countries addObject:[Country countryWithName:@"Saudi Arabia" andCode:@"SA"]];
            [countries addObject:[Country countryWithName:@"Solomon Islands" andCode:@"SB"]];
            [countries addObject:[Country countryWithName:@"Seychelles" andCode:@"SC"]];
            [countries addObject:[Country countryWithName:@"Sudan" andCode:@"SD"]];
            [countries addObject:[Country countryWithName:@"Sweden" andCode:@"SE"]];
            [countries addObject:[Country countryWithName:@"Singapore" andCode:@"SG"]];
            [countries addObject:[Country countryWithName:@"Saint Helena" andCode:@"SH"]];
            [countries addObject:[Country countryWithName:@"Slovenia" andCode:@"SI"]];
            //[countries addObject:[Country countryWithName:@"Svalbard and Jan Mayen" andCode:@"SJ"]];
            [countries addObject:[Country countryWithName:@"Slovakia" andCode:@"SK"]];
            [countries addObject:[Country countryWithName:@"Sierra Leone" andCode:@"SL"]];
            [countries addObject:[Country countryWithName:@"San Marino" andCode:@"SM"]];
            [countries addObject:[Country countryWithName:@"Senegal" andCode:@"SN"]];
            [countries addObject:[Country countryWithName:@"Somalia" andCode:@"SO"]];
            [countries addObject:[Country countryWithName:@"Suriname" andCode:@"SR"]];
            [countries addObject:[Country countryWithName:@"Sao Tome and Principe" andCode:@"ST"]];
            [countries addObject:[Country countryWithName:@"El Salvador" andCode:@"SV"]];
            //[countries addObject:[Country countryWithName:@"Sint Maarten" andCode:@"SX"]];
            [countries addObject:[Country countryWithName:@"Syrian Arab Republic" andCode:@"SY"]];
            [countries addObject:[Country countryWithName:@"Swaziland" andCode:@"SZ"]];
            [countries addObject:[Country countryWithName:@"Turks and Caicos Islands" andCode:@"TC"]];
            [countries addObject:[Country countryWithName:@"Chad" andCode:@"TD"]];
            //[countries addObject:[Country countryWithName:@"French Southern Territories" andCode:@"TF"]];
            [countries addObject:[Country countryWithName:@"Togo" andCode:@"TG"]];
            [countries addObject:[Country countryWithName:@"Thailand" andCode:@"TH"]];
            [countries addObject:[Country countryWithName:@"Tajikistan" andCode:@"TJ"]];
            //[countries addObject:[Country countryWithName:@"Tokelau" andCode:@"TK"]];
            [countries addObject:[Country countryWithName:@"East Timor" andCode:@"TL"]];
            [countries addObject:[Country countryWithName:@"Turkmenistan" andCode:@"TM"]];
            [countries addObject:[Country countryWithName:@"Tunisia" andCode:@"TN"]];
            [countries addObject:[Country countryWithName:@"Tonga" andCode:@"TO"]];
            [countries addObject:[Country countryWithName:@"Turkey" andCode:@"TR"]];
            [countries addObject:[Country countryWithName:@"Trinidad and Tobago" andCode:@"TT"]];
            [countries addObject:[Country countryWithName:@"Tuvalu" andCode:@"TV"]];
            [countries addObject:[Country countryWithName:@"Taiwan" andCode:@"TW"]];
            [countries addObject:[Country countryWithName:@"Tanzania" andCode:@"TZ"]];
            [countries addObject:[Country countryWithName:@"Ukraine" andCode:@"UA"]];
            [countries addObject:[Country countryWithName:@"Uganda" andCode:@"UG"]];
            //[countries addObject:[Country countryWithName:@"United States Minor Outlying Islands" andCode:@"UM"]];
            [countries addObject:[Country countryWithName:@"United States" andCode:@"US"]];
            [countries addObject:[Country countryWithName:@"Uruguay" andCode:@"UY"]];
            [countries addObject:[Country countryWithName:@"Uzbekistan" andCode:@"UZ"]];
            //[countries addObject:[Country countryWithName:@"Holy See (Vatican City State)" andCode:@"VA"]];
            [countries addObject:[Country countryWithName:@"Saint Vincent and the Grenadines" andCode:@"VC"]];
            [countries addObject:[Country countryWithName:@"Venezuela" andCode:@"VE"]];
            [countries addObject:[Country countryWithName:@"British Virgin Islands" andCode:@"VG"]];
            [countries addObject:[Country countryWithName:@"U.S. Virgin Islands" andCode:@"VI"]];
            [countries addObject:[Country countryWithName:@"Vietnam" andCode:@"VN"]];
            [countries addObject:[Country countryWithName:@"Vanuatu" andCode:@"VU"]];
            [countries addObject:[Country countryWithName:@"Wallis and Futuna" andCode:@"WF"]];
            [countries addObject:[Country countryWithName:@"Western Samoa" andCode:@"WS"]];
            [countries addObject:[Country countryWithName:@"Yemen" andCode:@"YE"]];
            [countries addObject:[Country countryWithName:@"Mayotte" andCode:@"YT"]];
            [countries addObject:[Country countryWithName:@"South Africa" andCode:@"ZA"]];
            [countries addObject:[Country countryWithName:@"Zambia" andCode:@"ZM"]];
            [countries addObject:[Country countryWithName:@"Zimbabwe" andCode:@"ZW"]];
        }
        
        NSSortDescriptor *sortDescriptor;
        sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"name" ascending:YES];
        NSArray *sortDescriptors = [NSArray arrayWithObject:sortDescriptor];
        [countries sortUsingDescriptors:sortDescriptors];
    }
        
    return countries;
}


@end
