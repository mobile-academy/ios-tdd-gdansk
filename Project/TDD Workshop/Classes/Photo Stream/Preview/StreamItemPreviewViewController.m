//  
//  Copyright (c) 2014 Mobile Warsaw All rights reserved.
//  


#import "StreamItemPreviewViewController.h"
#import "StreamItem.h"
#import "StreamItemPreviewLayout.h"


@implementation StreamItemPreviewViewController

#pragma mark - Object life cycle

- (id)initWithStreamItems:(NSArray *)streamItems {
    self =  [super init];
    if (self) {
        self.streamItems = streamItems;
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone
                                                                                               target:self
                                                                                               action:@selector(doneBarButtonPressed:)];

    }
    return self;
}

#pragma mark - View life cycle

- (void)loadView {
    self.view = [self createCollectionView];
}

- (UICollectionView *)createCollectionView {
    StreamItemPreviewLayout *flowLayout = [StreamItemPreviewLayout new];
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero
                                                          collectionViewLayout:flowLayout];
    [self setupCollectionView:collectionView];
    return collectionView;
}

- (void)setupCollectionView:(UICollectionView *)collectionView {
    collectionView.pagingEnabled = YES;
    collectionView.backgroundColor = [UIColor whiteColor];
    collectionView.dataSource = self;
}

#pragma mark - Actions

- (void)doneBarButtonPressed:(UIBarButtonItem *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}


@end