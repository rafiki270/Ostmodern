//
//  ViewController.m
//  Ostmodern
//
//  Created by Ondrej Rafaj on 22/01/2016.
//  Copyright © 2016 Ridiculous Innovations. All rights reserved.
//

#import "OSTHomeViewController.h"
#import "Masonry.h"
#import "OSTInteractor.h"
#import "OSTObjectEntity.h"
#import "OSTDataCollectionView.h"
#import "OSTDataCollectionViewCell.h"


@interface OSTHomeViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, strong, readwrite) NSArray *data;
@property (nonatomic, strong, readwrite) OSTDataCollectionView *collectionView;

@end


@implementation OSTHomeViewController


#pragma mark Layout

- (void)setupLayout {
    [self.collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

#pragma mark Subviews

- (OSTDataCollectionView *)collectionView {
    if (!_collectionView) {
        UICollectionViewLayout *layout = [[UICollectionViewLayout alloc] init];
        _collectionView = [[OSTDataCollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
        [_collectionView setDelegate:self];
        [_collectionView setDataSource:self];
    }
    return _collectionView;
}

- (void)addSubviews {
    [self.view addSubview:self.collectionView];
}

#pragma mark Accessors

- (void)loadData {
    [self.interactor loadDataSetsWithSuccess:^(NSArray *data) {
        self.data = data;
        [self.collectionView reloadData];
    } andError:^(NSError *error) {
        __weak typeof(self) weakSelf = self;
        UIAlertAction *action = [UIAlertAction actionWithTitle:NSLocalizedString(@"Reload", @"Reload button") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [weakSelf loadData];
        }];
        UIAlertController *alert = [[UIAlertController alloc] init];
        [alert setTitle:NSLocalizedString(@"Connection error", @"Network request error")];
        [alert setMessage:error.localizedDescription];
        [alert setPreferredAction:action];
    }];
}

#pragma mark View lifecycle

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self loadData];
}

#pragma mark Collection view delegate and data source methods

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.data.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    OSTDataCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    
    OSTObjectEntity *object = self.data[indexPath.row];
    [cell setObject:object];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    [collectionView deselectItemAtIndexPath:indexPath animated:YES];
}


@end
