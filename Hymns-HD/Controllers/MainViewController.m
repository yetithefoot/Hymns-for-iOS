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
#import <AVFoundation/AVFoundation.h>

#import "Country.h"

@interface MainViewController () <GMGridViewDataSource, GMGridViewActionDelegate>
{
    __gm_weak GMGridView *_gmGridView;
    UIImageView * _speakerView;

}

- (void)presentInfo;

@end

@implementation MainViewController

@synthesize player;

-(void)dealloc{
    [[UIApplication sharedApplication] endReceivingRemoteControlEvents];
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
    
    // init mask view
    _speakerView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"speaker"]];
    _speakerView.frame = CGRectMake(0, 0, 50, 50);
    _speakerView.alpha = 1;
    
    
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [[UIApplication sharedApplication] beginReceivingRemoteControlEvents];
    
    [self becomeFirstResponder];

}
- (BOOL) canBecomeFirstResponder {
    return YES;
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self resignFirstResponder];
}

-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    //[self.player stop];
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
    return [[Country allCountries] count];
}

- (CGSize)GMGridView:(GMGridView *)gridView sizeForItemsInInterfaceOrientation:(UIInterfaceOrientation)orientation
{
    if (INTERFACE_IS_PHONE) 
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
    
    GMGridViewCell *cell = [gridView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (!cell) 
    {
        cell = [[GMGridViewCell alloc] init];
        cell.reuseIdentifier = @"cell";

    }
    
    Country * country = [[Country allCountries] objectAtIndex:index];
    
    NSString * key = [country.code lowercaseString];
    UIImageView * view = [[UIImageView alloc]initWithImage:[UIImage imageNamed:key]];
    view.layer.masksToBounds = NO;
    
    
    cell.contentView = view;
    
    CGRect frame = CGRectMake(0, 98, 128, 30);
    
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.text = country.name;
    
#ifdef DEBUG
    NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:[country.code lowercaseString] ofType:@"mp3"];
    label.text = [NSString stringWithFormat:@"%@ -%@", key, country.name];
    if([[NSFileManager defaultManager] fileExistsAtPath:soundFilePath]){
        label.text = [NSString stringWithFormat:@"+%@ -%@",  key, country.name];
    }
#endif
    
    label.textAlignment = UITextAlignmentCenter;
    label.backgroundColor = [UIColor clearColor];
    label.textColor = [UIColor lightGrayColor];
    label.shadowColor = [UIColor blackColor];
    label.shadowOffset = CGSizeMake(0,1);
    label.numberOfLines = 0;
    label.font = [UIFont boldSystemFontOfSize:13];

    [view addSubview:label];
    
    if(self.player.playing && __lastClickedCell == index){
        [cell.contentView addSubview:_speakerView];
    }
    
    return cell;
}


- (BOOL)GMGridView:(GMGridView *)gridView canDeleteItemAtIndex:(NSInteger)index
{
    return NO;
}

//////////////////////////////////////////////////////////////
#pragma mark GMGridViewActionDelegate
//////////////////////////////////////////////////////////////

-(void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag{
    [[AVAudioSession sharedInstance] setActive: NO error: nil];
    [_speakerView removeFromSuperview];
    __lastClickedCell = NSNotFound;
}

-(void)stopPlaying{
    [[AVAudioSession sharedInstance] setActive: NO error: nil];
    [self.player stop];
}

-(void)startPlaying:(Country *)country{
    NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:[country.code lowercaseString] ofType:@"caf"];
    NSData * audioData = [NSData dataWithContentsOfFile:soundFilePath];
    NSError * error = nil;
    
    self.player = [[AVAudioPlayer alloc]initWithData:audioData error:&error];
    if(error == nil){
        self.player.delegate = self;
        [[AVAudioSession sharedInstance] setCategory:AVAudioSessionCategoryPlayback error:nil];
        [[AVAudioSession sharedInstance] setActive: YES error: nil];
        [player play];
    }else{
        NSLog(@"%@", error); 
    }
}

int __lastClickedCell = NSNotFound;
- (void)GMGridView:(GMGridView *)gridView didTapOnItemAtIndex:(NSInteger)position
{
    NSLog(@"Did tap at index %d", position);
    
    // if player is playing and clicked same song - stop
    if((__lastClickedCell == position) && self.player.playing){
        [_speakerView removeFromSuperview];
        [self stopPlaying];
        __lastClickedCell = NSNotFound;
    }else{
        GMGridViewCell * cell = [gridView cellForItemAtIndex:position];
        [cell.contentView addSubview:_speakerView];
        Country * country = [[Country allCountries] objectAtIndex:position];
        [self startPlaying:country];
    }
    
    __lastClickedCell = position;
    
}

- (void)GMGridViewDidTapOnEmptySpace:(GMGridView *)gridView
{
    NSLog(@"Tap on empty space");
}




@end
