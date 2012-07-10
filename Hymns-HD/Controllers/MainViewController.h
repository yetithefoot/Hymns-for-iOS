//
//  ViewController.h
//  Hymns-HD
//
//  Created by Vlad Tsepelev on 03.07.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "GMGridView.h"

@interface MainViewController : UIViewController<AVAudioPlayerDelegate>

@property(nonatomic, strong) AVAudioPlayer * player;


@end


