//
//  ViewController.m
//  Hymns-HD
//
//  Created by Vlad Tsepelev on 03.07.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"
#import "GMGridView.h"
#import "GMGridViewLayoutStrategies.h"

@interface MainViewController () <GMGridViewDataSource, GMGridViewActionDelegate>
{
    __gm_weak GMGridView *_gmGridView;
    NSMutableArray *_data;
    NSMutableDictionary *_names;

}

- (void)presentInfo;

@end

@implementation MainViewController

- (id)init
{
    if ((self =[super init])) 
    {
        // add flag filenames
        _data = [[NSMutableArray alloc] init];
        {
        [_data addObject:@"ad"];
        [_data addObject:@"ae"];
        [_data addObject:@"af"];
        [_data addObject:@"ag"];
        [_data addObject:@"ai"];
        [_data addObject:@"al"];
        [_data addObject:@"am"];
        [_data addObject:@"an"];
        [_data addObject:@"ao"];
        [_data addObject:@"ar"];
        [_data addObject:@"as"];
        [_data addObject:@"at"];
        [_data addObject:@"au"];
        [_data addObject:@"aw"];
        [_data addObject:@"ax"];
        [_data addObject:@"ba"];
        [_data addObject:@"bb"];
        [_data addObject:@"bd"];
        [_data addObject:@"be"];
        [_data addObject:@"bf"];
        [_data addObject:@"bg"];
        [_data addObject:@"bh"];
        [_data addObject:@"bi"];
        [_data addObject:@"bj"];
        [_data addObject:@"bm"];
        [_data addObject:@"bn"];
        [_data addObject:@"bo"];
        [_data addObject:@"br"];
        [_data addObject:@"bs"];
        [_data addObject:@"bt"];
        [_data addObject:@"bw"];
        [_data addObject:@"by"];
        [_data addObject:@"bz"];
        [_data addObject:@"ca"];
        [_data addObject:@"cd"];
        [_data addObject:@"cf"];
        [_data addObject:@"cg"];
        [_data addObject:@"ch"];
        [_data addObject:@"ci"];
        [_data addObject:@"ck"];
        [_data addObject:@"cl"];
        [_data addObject:@"cm"];
        [_data addObject:@"cn"];
        [_data addObject:@"co"];
        [_data addObject:@"cr"];
        [_data addObject:@"cu"];
        [_data addObject:@"cv"];
        [_data addObject:@"cx"];
        [_data addObject:@"cy"];
        [_data addObject:@"cz"];
        [_data addObject:@"de"];
        [_data addObject:@"dj"];
        [_data addObject:@"dk"];
        [_data addObject:@"dm"];
        [_data addObject:@"do"];
        [_data addObject:@"dz"];
        [_data addObject:@"ec"];
        [_data addObject:@"ee"];
        [_data addObject:@"eg"];
        [_data addObject:@"er"];
        [_data addObject:@"es"];
        [_data addObject:@"et"];
        [_data addObject:@"eu"];
        [_data addObject:@"fi"];
        [_data addObject:@"fj"];
        [_data addObject:@"fk"];
        [_data addObject:@"fm"];
        [_data addObject:@"fo"];
        [_data addObject:@"fr"];
        [_data addObject:@"ga"];
        [_data addObject:@"gd"];
        [_data addObject:@"ge"];
        [_data addObject:@"gg"];
        [_data addObject:@"gh"];
        [_data addObject:@"gi"];
        [_data addObject:@"gl"];
        [_data addObject:@"gm"];
        [_data addObject:@"gn"];
        [_data addObject:@"gq"];
        [_data addObject:@"gr"];
        [_data addObject:@"gs"];
        [_data addObject:@"gt"];
        [_data addObject:@"gu"];
        [_data addObject:@"gw"];
        [_data addObject:@"gy"];
        [_data addObject:@"hk"];
        [_data addObject:@"hn"];
        [_data addObject:@"hr"];
        [_data addObject:@"ht"];
        [_data addObject:@"hu"];
        [_data addObject:@"id"];
        [_data addObject:@"ie"];
        [_data addObject:@"il"];
        [_data addObject:@"im"];
        [_data addObject:@"in"];
        [_data addObject:@"io"];
        [_data addObject:@"iq"];
        [_data addObject:@"ir"];
        [_data addObject:@"is"];
        [_data addObject:@"it"];
        [_data addObject:@"je"];
        [_data addObject:@"jm"];
        [_data addObject:@"jo"];
        [_data addObject:@"jp"];
        [_data addObject:@"ke"];
        [_data addObject:@"kg"];
        [_data addObject:@"kh"];
        [_data addObject:@"ki"];
        [_data addObject:@"km"];
        [_data addObject:@"kn"];
        [_data addObject:@"kp"];
        [_data addObject:@"kr"];
        [_data addObject:@"kw"];
        [_data addObject:@"ky"];
        [_data addObject:@"kz"];
        [_data addObject:@"la"];
        [_data addObject:@"lb"];
        [_data addObject:@"lc"];
        [_data addObject:@"li"];
        [_data addObject:@"lk"];
        [_data addObject:@"lr"];
        [_data addObject:@"ls"];
        [_data addObject:@"lt"];
        [_data addObject:@"lu"];
        [_data addObject:@"lv"];
        [_data addObject:@"ly"];
        [_data addObject:@"ma"];
        [_data addObject:@"mc"];
        [_data addObject:@"md"];
        [_data addObject:@"me"];
        [_data addObject:@"mg"];
        [_data addObject:@"mh"];
        [_data addObject:@"ml"];
        [_data addObject:@"mn"];
        [_data addObject:@"mo"];
        [_data addObject:@"mp"];
        [_data addObject:@"mq"];
        [_data addObject:@"mr"];
        [_data addObject:@"ms"];
        [_data addObject:@"mt"];
        [_data addObject:@"mu"];
        [_data addObject:@"mv"];
        [_data addObject:@"mw"];
        [_data addObject:@"mx"];
        [_data addObject:@"my"];
        [_data addObject:@"mz"];
        [_data addObject:@"na"];
        [_data addObject:@"ne"];
        [_data addObject:@"nf"];
        [_data addObject:@"ng"];
        [_data addObject:@"ni"];
        [_data addObject:@"nl"];
        [_data addObject:@"nm"];
        [_data addObject:@"no"];
        [_data addObject:@"np"];
        [_data addObject:@"nr"];
        [_data addObject:@"nu"];
        [_data addObject:@"nz"];
        [_data addObject:@"om"];
        [_data addObject:@"pa"];
        [_data addObject:@"pf"];
        [_data addObject:@"pg"];
        [_data addObject:@"ph"];
        [_data addObject:@"pk"];
        [_data addObject:@"pl"];
        [_data addObject:@"pm"];
        [_data addObject:@"pn"];
        [_data addObject:@"pr"];
        [_data addObject:@"pt"];
        [_data addObject:@"pw"];
        [_data addObject:@"py"];
        [_data addObject:@"qa"];
        [_data addObject:@"ro"];
        [_data addObject:@"rs"];
        [_data addObject:@"ru"];
        [_data addObject:@"rw"];
        [_data addObject:@"sa"];
        [_data addObject:@"sb"];
        [_data addObject:@"sc"];
        [_data addObject:@"sd"];
        [_data addObject:@"se"];
        [_data addObject:@"sg"];
        [_data addObject:@"sh"];
        [_data addObject:@"si"];
        [_data addObject:@"sk"];
        [_data addObject:@"sl"];
        [_data addObject:@"sm"];
        [_data addObject:@"sn"];
        [_data addObject:@"so"];
        [_data addObject:@"sr"];
        [_data addObject:@"st"];
        [_data addObject:@"sv"];
        [_data addObject:@"sy"];
        [_data addObject:@"sz"];
        [_data addObject:@"tc"];
        [_data addObject:@"td"];
        [_data addObject:@"tg"];
        [_data addObject:@"th"];
        [_data addObject:@"tj"];
        [_data addObject:@"tl"];
        [_data addObject:@"tm"];
        [_data addObject:@"tn"];
        [_data addObject:@"to"];
        [_data addObject:@"tr"];
        [_data addObject:@"tt"];
        [_data addObject:@"tv"];
        [_data addObject:@"tw"];
        [_data addObject:@"tz"];
        [_data addObject:@"ua"];
        [_data addObject:@"ug"];
        [_data addObject:@"uk"];
        [_data addObject:@"us"];
        [_data addObject:@"uy"];
        [_data addObject:@"uz"];
        [_data addObject:@"vc"];
        [_data addObject:@"ve"];
        [_data addObject:@"vg"];
        [_data addObject:@"vh"];
        [_data addObject:@"vi"];
        [_data addObject:@"vn"];
        [_data addObject:@"vu"];
        [_data addObject:@"wf"];
        [_data addObject:@"ws"];
        [_data addObject:@"ye"];
        [_data addObject:@"yt"];
        [_data addObject:@"yu"];
        [_data addObject:@"za"];
        [_data addObject:@"zm"];
        [_data addObject:@"zw"];
    }
        
        // add dictionary with codes and names
        _names = [[NSMutableDictionary alloc]init];
        {
            [_names setValue:@"Andorra" forKey:@"AD"];
            [_names setValue:@"United Arab Emirates" forKey:@"AE"];
            [_names setValue:@"Afghanistan" forKey:@"AF"];
            [_names setValue:@"Antigua and Barbuda" forKey:@"AG"];
            [_names setValue:@"Anguilla" forKey:@"AI"];
            [_names setValue:@"Albania" forKey:@"AL"];
            [_names setValue:@"Armenia" forKey:@"AM"];
            [_names setValue:@"Netherlands Antilles" forKey:@"AN"];
            [_names setValue:@"Angola" forKey:@"AO"];
            [_names setValue:@"Asia/Pacific Region" forKey:@"AP"];
            [_names setValue:@"Antarctica" forKey:@"AQ"];
            [_names setValue:@"Argentina" forKey:@"AR"];
            [_names setValue:@"American Samoa" forKey:@"AS"];
            [_names setValue:@"Austria" forKey:@"AT"];
            [_names setValue:@"Australia" forKey:@"AU"];
            [_names setValue:@"Aruba" forKey:@"AW"];
            [_names setValue:@"Aland Islands" forKey:@"AX"];
            [_names setValue:@"Azerbaijan" forKey:@"AZ"];
            [_names setValue:@"Bosnia and Herzegovina" forKey:@"BA"];
            [_names setValue:@"Barbados" forKey:@"BB"];
            [_names setValue:@"Bangladesh" forKey:@"BD"];
            [_names setValue:@"Belgium" forKey:@"BE"];
            [_names setValue:@"Burkina Faso" forKey:@"BF"];
            [_names setValue:@"Bulgaria" forKey:@"BG"];
            [_names setValue:@"Bahrain" forKey:@"BH"];
            [_names setValue:@"Burundi" forKey:@"BI"];
            [_names setValue:@"Benin" forKey:@"BJ"];
            [_names setValue:@"Saint Bartelemey" forKey:@"BL"];
            [_names setValue:@"Bermuda" forKey:@"BM"];
            [_names setValue:@"Brunei Darussalam" forKey:@"BN"];
            [_names setValue:@"Bolivia" forKey:@"BO"];
            [_names setValue:@"Bonaire, Saint Eustatius and Saba" forKey:@"BQ"];
            [_names setValue:@"Brazil" forKey:@"BR"];
            [_names setValue:@"Bahamas" forKey:@"BS"];
            [_names setValue:@"Bhutan" forKey:@"BT"];
            [_names setValue:@"Bouvet Island" forKey:@"BV"];
            [_names setValue:@"Botswana" forKey:@"BW"];
            [_names setValue:@"Belarus" forKey:@"BY"];
            [_names setValue:@"Belize" forKey:@"BZ"];
            [_names setValue:@"Canada" forKey:@"CA"];
            [_names setValue:@"Cocos (Keeling) Islands" forKey:@"CC"];
            [_names setValue:@"Congo" forKey:@"CD"];
            [_names setValue:@"Central African Republic" forKey:@"CF"];
            [_names setValue:@"Congo" forKey:@"CG"];
            [_names setValue:@"Switzerland" forKey:@"CH"];
            [_names setValue:@"Cote d'Ivoire" forKey:@"CI"];
            [_names setValue:@"Cook Islands" forKey:@"CK"];
            [_names setValue:@"Chile" forKey:@"CL"];
            [_names setValue:@"Cameroon" forKey:@"CM"];
            [_names setValue:@"China" forKey:@"CN"];
            [_names setValue:@"Colombia" forKey:@"CO"];
            [_names setValue:@"Costa Rica" forKey:@"CR"];
            [_names setValue:@"Cuba" forKey:@"CU"];
            [_names setValue:@"Cape Verde" forKey:@"CV"];
            [_names setValue:@"Curacao" forKey:@"CW"];
            [_names setValue:@"Christmas Island" forKey:@"CX"];
            [_names setValue:@"Cyprus" forKey:@"CY"];
            [_names setValue:@"Czech Republic" forKey:@"CZ"];
            [_names setValue:@"Germany" forKey:@"DE"];
            [_names setValue:@"Djibouti" forKey:@"DJ"];
            [_names setValue:@"Denmark" forKey:@"DK"];
            [_names setValue:@"Dominica" forKey:@"DM"];
            [_names setValue:@"Dominican Republic" forKey:@"DO"];
            [_names setValue:@"Algeria" forKey:@"DZ"];
            [_names setValue:@"Ecuador" forKey:@"EC"];
            [_names setValue:@"Estonia" forKey:@"EE"];
            [_names setValue:@"Egypt" forKey:@"EG"];
            [_names setValue:@"Western Sahara" forKey:@"EH"];
            [_names setValue:@"Eritrea" forKey:@"ER"];
            [_names setValue:@"Spain" forKey:@"ES"];
            [_names setValue:@"Ethiopia" forKey:@"ET"];
            [_names setValue:@"Europe" forKey:@"EU"];
            [_names setValue:@"Finland" forKey:@"FI"];
            [_names setValue:@"Fiji" forKey:@"FJ"];
            [_names setValue:@"Falkland Islands (Malvinas)" forKey:@"FK"];
            [_names setValue:@"Micronesia" forKey:@"FM"];
            [_names setValue:@"Faroe Islands" forKey:@"FO"];
            [_names setValue:@"France" forKey:@"FR"];
            [_names setValue:@"Gabon" forKey:@"GA"];
            [_names setValue:@"United Kingdom" forKey:@"GB"];
            [_names setValue:@"United Kingdom" forKey:@"UK"];
            [_names setValue:@"Grenada" forKey:@"GD"];
            [_names setValue:@"Georgia" forKey:@"GE"];
            [_names setValue:@"French Guiana" forKey:@"GF"];
            [_names setValue:@"Guernsey" forKey:@"GG"];
            [_names setValue:@"Ghana" forKey:@"GH"];
            [_names setValue:@"Gibraltar" forKey:@"GI"];
            [_names setValue:@"Greenland" forKey:@"GL"];
            [_names setValue:@"Gambia" forKey:@"GM"];
            [_names setValue:@"Guinea" forKey:@"GN"];
            [_names setValue:@"Guadeloupe" forKey:@"GP"];
            [_names setValue:@"Equatorial Guinea" forKey:@"GQ"];
            [_names setValue:@"Greece" forKey:@"GR"];
            [_names setValue:@"South Georgia and Sandwich Islands" forKey:@"GS"];
            [_names setValue:@"Guatemala" forKey:@"GT"];
            [_names setValue:@"Guam" forKey:@"GU"];
            [_names setValue:@"Guinea-Bissau" forKey:@"GW"];
            [_names setValue:@"Guyana" forKey:@"GY"];
            [_names setValue:@"Hong Kong" forKey:@"HK"];
            [_names setValue:@"Heard Island and McDonald Islands" forKey:@"HM"];
            [_names setValue:@"Honduras" forKey:@"HN"];
            [_names setValue:@"Croatia" forKey:@"HR"];
            [_names setValue:@"Haiti" forKey:@"HT"];
            [_names setValue:@"Hungary" forKey:@"HU"];
            [_names setValue:@"Indonesia" forKey:@"ID"];
            [_names setValue:@"Ireland" forKey:@"IE"];
            [_names setValue:@"Israel" forKey:@"IL"];
            [_names setValue:@"Vatican City" forKey:@"VH"];
            [_names setValue:@"Isle of Man" forKey:@"IM"];
            [_names setValue:@"India" forKey:@"IN"];
            [_names setValue:@"British Indian Ocean Territory" forKey:@"IO"];
            [_names setValue:@"Iraq" forKey:@"IQ"];
            [_names setValue:@"Iran" forKey:@"IR"];
            [_names setValue:@"Iceland" forKey:@"IS"];
            [_names setValue:@"Italy" forKey:@"IT"];
            [_names setValue:@"Jersey" forKey:@"JE"];
            [_names setValue:@"Yugoslavia" forKey:@"YU"];
            [_names setValue:@"Jamaica" forKey:@"JM"];
            [_names setValue:@"Jordan" forKey:@"JO"];
            [_names setValue:@"Japan" forKey:@"JP"];
            [_names setValue:@"Kenya" forKey:@"KE"];
            [_names setValue:@"Kyrgyzstan" forKey:@"KG"];
            [_names setValue:@"Cambodia" forKey:@"KH"];
            [_names setValue:@"Kiribati" forKey:@"KI"];
            [_names setValue:@"Comoros" forKey:@"KM"];
            [_names setValue:@"Saint Kitts and Nevis" forKey:@"KN"];
            [_names setValue:@"North Korea" forKey:@"KP"];
            [_names setValue:@"South Korea" forKey:@"KR"];
            [_names setValue:@"Kuwait" forKey:@"KW"];
            [_names setValue:@"Cayman Islands" forKey:@"KY"];
            [_names setValue:@"Kazakhstan" forKey:@"KZ"];
            [_names setValue:@"Democratic Lao People's Republic" forKey:@"LA"];
            [_names setValue:@"Lebanon" forKey:@"LB"];
            [_names setValue:@"Saint Lucia" forKey:@"LC"];
            [_names setValue:@"Liechtenstein" forKey:@"LI"];
            [_names setValue:@"Sri Lanka" forKey:@"LK"];
            [_names setValue:@"Liberia" forKey:@"LR"];
            [_names setValue:@"Lesotho" forKey:@"LS"];
            [_names setValue:@"Lithuania" forKey:@"LT"];
            [_names setValue:@"Luxembourg" forKey:@"LU"];
            [_names setValue:@"Latvia" forKey:@"LV"];
            [_names setValue:@"Libyan Arab Jamahiriya" forKey:@"LY"];
            [_names setValue:@"Morocco" forKey:@"MA"];
            [_names setValue:@"Monaco" forKey:@"MC"];
            [_names setValue:@"Moldova" forKey:@"MD"];
            [_names setValue:@"Montenegro" forKey:@"ME"];
            [_names setValue:@"Saint Martin" forKey:@"MF"];
            [_names setValue:@"Madagascar" forKey:@"MG"];
            [_names setValue:@"Marshall Islands" forKey:@"MH"];
            [_names setValue:@"Macedonia" forKey:@"MK"];
            [_names setValue:@"Mali" forKey:@"ML"];
            [_names setValue:@"Myanmar" forKey:@"MM"];
            [_names setValue:@"Mongolia" forKey:@"MN"];
            [_names setValue:@"Macao" forKey:@"MO"];
            [_names setValue:@"Northern Mariana Islands" forKey:@"MP"];
            [_names setValue:@"Martinique" forKey:@"MQ"];
            [_names setValue:@"Mauritania" forKey:@"MR"];
            [_names setValue:@"Montserrat" forKey:@"MS"];
            [_names setValue:@"Malta" forKey:@"MT"];
            [_names setValue:@"Mauritius" forKey:@"MU"];
            [_names setValue:@"Maldives" forKey:@"MV"];
            [_names setValue:@"Malawi" forKey:@"MW"];
            [_names setValue:@"Mexico" forKey:@"MX"];
            [_names setValue:@"Malaysia" forKey:@"MY"];
            [_names setValue:@"Mozambique" forKey:@"MZ"];
            [_names setValue:@"Namibia" forKey:@"NA"];
            [_names setValue:@"New Caledonia" forKey:@"NC"];
            [_names setValue:@"Niger" forKey:@"NE"];
            [_names setValue:@"Norfolk Island" forKey:@"NF"];
            [_names setValue:@"Nigeria" forKey:@"NG"];
            [_names setValue:@"Nicaragua" forKey:@"NI"];
            [_names setValue:@"Netherlands" forKey:@"NL"];
            [_names setValue:@"Burma (Myanmar)" forKey:@"NM"];
            [_names setValue:@"Norway" forKey:@"NO"];
            [_names setValue:@"Nepal" forKey:@"NP"];
            [_names setValue:@"Nauru" forKey:@"NR"];
            [_names setValue:@"Niue" forKey:@"NU"];
            [_names setValue:@"New Zealand" forKey:@"NZ"];
            [_names setValue:@"Oman" forKey:@"OM"];
            [_names setValue:@"Panama" forKey:@"PA"];
            [_names setValue:@"Peru" forKey:@"PE"];
            [_names setValue:@"French Polynesia" forKey:@"PF"];
            [_names setValue:@"Papua New Guinea" forKey:@"PG"];
            [_names setValue:@"Philippines" forKey:@"PH"];
            [_names setValue:@"Pakistan" forKey:@"PK"];
            [_names setValue:@"Poland" forKey:@"PL"];
            [_names setValue:@"Saint Pierre and Miquelon" forKey:@"PM"];
            [_names setValue:@"Pitcairn" forKey:@"PN"];
            [_names setValue:@"Puerto Rico" forKey:@"PR"];
            [_names setValue:@"Palestinian Territory" forKey:@"PS"];
            [_names setValue:@"Portugal" forKey:@"PT"];
            [_names setValue:@"Palau" forKey:@"PW"];
            [_names setValue:@"Paraguay" forKey:@"PY"];
            [_names setValue:@"Qatar" forKey:@"QA"];
            [_names setValue:@"Reunion" forKey:@"RE"];
            [_names setValue:@"Romania" forKey:@"RO"];
            [_names setValue:@"Serbia" forKey:@"RS"];
            [_names setValue:@"Russian Federation" forKey:@"RU"];
            [_names setValue:@"Rwanda" forKey:@"RW"];
            [_names setValue:@"Saudi Arabia" forKey:@"SA"];
            [_names setValue:@"Solomon Islands" forKey:@"SB"];
            [_names setValue:@"Seychelles" forKey:@"SC"];
            [_names setValue:@"Sudan" forKey:@"SD"];
            [_names setValue:@"Sweden" forKey:@"SE"];
            [_names setValue:@"Singapore" forKey:@"SG"];
            [_names setValue:@"Saint Helena" forKey:@"SH"];
            [_names setValue:@"Slovenia" forKey:@"SI"];
            [_names setValue:@"Svalbard and Jan Mayen" forKey:@"SJ"];
            [_names setValue:@"Slovakia" forKey:@"SK"];
            [_names setValue:@"Sierra Leone" forKey:@"SL"];
            [_names setValue:@"San Marino" forKey:@"SM"];
            [_names setValue:@"Senegal" forKey:@"SN"];
            [_names setValue:@"Somalia" forKey:@"SO"];
            [_names setValue:@"Suriname" forKey:@"SR"];
            [_names setValue:@"Sao Tome and Principe" forKey:@"ST"];
            [_names setValue:@"El Salvador" forKey:@"SV"];
            [_names setValue:@"Sint Maarten" forKey:@"SX"];
            [_names setValue:@"Syrian Arab Republic" forKey:@"SY"];
            [_names setValue:@"Swaziland" forKey:@"SZ"];
            [_names setValue:@"Turks and Caicos Islands" forKey:@"TC"];
            [_names setValue:@"Chad" forKey:@"TD"];
            [_names setValue:@"French Southern Territories" forKey:@"TF"];
            [_names setValue:@"Togo" forKey:@"TG"];
            [_names setValue:@"Thailand" forKey:@"TH"];
            [_names setValue:@"Tajikistan" forKey:@"TJ"];
            [_names setValue:@"Tokelau" forKey:@"TK"];
            [_names setValue:@"Timor-Leste" forKey:@"TL"];
            [_names setValue:@"Turkmenistan" forKey:@"TM"];
            [_names setValue:@"Tunisia" forKey:@"TN"];
            [_names setValue:@"Tonga" forKey:@"TO"];
            [_names setValue:@"Turkey" forKey:@"TR"];
            [_names setValue:@"Trinidad and Tobago" forKey:@"TT"];
            [_names setValue:@"Tuvalu" forKey:@"TV"];
            [_names setValue:@"Taiwan" forKey:@"TW"];
            [_names setValue:@"Tanzania" forKey:@"TZ"];
            [_names setValue:@"Ukraine" forKey:@"UA"];
            [_names setValue:@"Uganda" forKey:@"UG"];
            [_names setValue:@"United States Minor Outlying Islands" forKey:@"UM"];
            [_names setValue:@"United States" forKey:@"US"];
            [_names setValue:@"Uruguay" forKey:@"UY"];
            [_names setValue:@"Uzbekistan" forKey:@"UZ"];
            [_names setValue:@"Holy See (Vatican City State)" forKey:@"VA"];
            [_names setValue:@"Saint Vincent and the Grenadines" forKey:@"VC"];
            [_names setValue:@"Venezuela" forKey:@"VE"];
            [_names setValue:@"British Virgin Islands" forKey:@"VG"];
            [_names setValue:@"U.S. Virgin Islands" forKey:@"VI"];
            [_names setValue:@"Vietnam" forKey:@"VN"];
            [_names setValue:@"Vanuatu" forKey:@"VU"];
            [_names setValue:@"Wallis and Futuna" forKey:@"WF"];
            [_names setValue:@"Samoa" forKey:@"WS"];
            [_names setValue:@"Yemen" forKey:@"YE"];
            [_names setValue:@"Mayotte" forKey:@"YT"];
            [_names setValue:@"South Africa" forKey:@"ZA"];
            [_names setValue:@"Zambia" forKey:@"ZM"];
            [_names setValue:@"Zimbabwe" forKey:@"ZW"];
        }

    }
    
    return self;
}

- (void)loadView 
{
    [super loadView];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImage * image = [UIImage imageNamed:@"background.png"];
    UIImageView * bg = [[UIImageView alloc]initWithImage:image];
    bg.frame = CGRectMake(0, 0, image.size.width, image.size.height);
    [self.view addSubview:bg];
    
    
    NSInteger spacing = 10;
    
    GMGridView *gmGridView = [[GMGridView alloc] initWithFrame:self.view.bounds];
    gmGridView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    gmGridView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:gmGridView];
    _gmGridView = gmGridView;
    
    _gmGridView.style = GMGridViewStyleSwap;
    _gmGridView.layoutStrategy = [GMGridViewLayoutStrategyFactory strategyFromType:GMGridViewLayoutHorizontalPagedLTR];
    _gmGridView.itemSpacing = spacing;
    _gmGridView.minEdgeInsets = UIEdgeInsetsMake(spacing, spacing, spacing, spacing);
    _gmGridView.centerGrid = YES;
    _gmGridView.actionDelegate = self;
    _gmGridView.dataSource = self;
    _gmGridView.showsHorizontalScrollIndicator = NO;
    
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    infoButton.frame = CGRectMake(self.view.bounds.size.width - 40, 
                                  self.view.bounds.size.height - 40, 
                                  40,
                                  40);
    infoButton.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleTopMargin;
    [infoButton addTarget:self action:@selector(presentInfo) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:infoButton];
    
    
}

- (void)presentInfo
{
    NSString *info = @"Flag images provided by Nordic Factory (www.nordicfactory.com)";
    
    [SVProgressHUD showSuccessWithStatus:info duration:5.0];
}




-(void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation{
        //[SVProgressHUD showSuccessWithStatus:@"View rotated"];
    //[_gmGridView setNeedsLayout];
    
    [_gmGridView reloadData];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

//////////////////////////////////////////////////////////////
#pragma mark GMGridViewDataSource
//////////////////////////////////////////////////////////////

- (NSInteger)numberOfItemsInGMGridView:(GMGridView *)gridView
{
    return [_data count];
}

- (CGSize)GMGridView:(GMGridView *)gridView sizeForItemsInInterfaceOrientation:(UIInterfaceOrientation)orientation
{
    if (INTERFACE_IS_PHONE) 
    {
        if (UIInterfaceOrientationIsLandscape(orientation)) 
        {
            return CGSizeMake(170, 135);
        }
        else
        {
            return CGSizeMake(140, 110);
        }
    }
    else
    {
        if (UIInterfaceOrientationIsLandscape(orientation)) 
        {
            return CGSizeMake(128, 128);
        }
        else
        {
            return CGSizeMake(128, 128);
        }
    }
}

- (GMGridViewCell *)GMGridView:(GMGridView *)gridView cellForItemAtIndex:(NSInteger)index
{
    //NSLog(@"Creating view indx %d", index);
    
    //CGSize size = [self GMGridView:gridView sizeForItemsInInterfaceOrientation:[[UIApplication sharedApplication] statusBarOrientation]];
    
    GMGridViewCell *cell = [gridView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (!cell) 
    {
        cell = [[GMGridViewCell alloc] init];
        cell.reuseIdentifier = @"cell";

    }

    UIImageView * view = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[_data objectAtIndex:index]]];
    //view.layer.masksToBounds = NO;
    //view.layer.cornerRadius = 8;
    //view.layer.shadowColor = [[UIColor blackColor] CGColor];
    //view.layer.shadowOffset = CGSizeMake(20, 20);
    //view.layer.shadowRadius = 10;
    
    cell.contentView = view;
    
    [[cell.contentView subviews] makeObjectsPerformSelector:@selector(removeFromSuperview)];
    
    CGRect frame = CGRectMake(0, cell.contentView.bounds.size.height-30, cell.contentView.bounds.size.width, 30.0);
    
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    NSString * key = [((NSString *)[_data objectAtIndex:index]) uppercaseString];
    label.text =  [_names objectForKey:key];
    label.textAlignment = UITextAlignmentCenter;
    label.backgroundColor = [UIColor clearColor];
    label.textColor = [UIColor lightGrayColor];
    label.shadowColor = [UIColor blackColor];
    label.shadowOffset = CGSizeMake(0,1);
    label.numberOfLines = 0;
    label.font = [UIFont boldSystemFontOfSize:13];

    [cell.contentView addSubview:label];
    
    return cell;
}


- (BOOL)GMGridView:(GMGridView *)gridView canDeleteItemAtIndex:(NSInteger)index
{
    return NO;
}

//////////////////////////////////////////////////////////////
#pragma mark GMGridViewActionDelegate
//////////////////////////////////////////////////////////////

- (void)GMGridView:(GMGridView *)gridView didTapOnItemAtIndex:(NSInteger)position
{
    NSLog(@"Did tap at index %d", position);
}

- (void)GMGridViewDidTapOnEmptySpace:(GMGridView *)gridView
{
    NSLog(@"Tap on empty space");
}




@end
