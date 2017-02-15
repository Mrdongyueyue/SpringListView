//
//  ViewController.m
//  SpringTableView
//
//  Created by 董知樾 on 2017/2/13.
//  Copyright © 2017年 董知樾. All rights reserved.
//

#import "ViewController.h"
#import "YYSpringLayout.h"

@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    [self.view layoutIfNeeded];
}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 3;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}


- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    CGFloat r , g, b;
    switch (indexPath.section) {
        case 0:
            r = indexPath.item / 10.0 + 0.1;
            g = 0.5;
            b = 0.5;
            break;
        case 1:
            r = 0.5;
            g = indexPath.item / 10.0 + 0.1;
            b = 0.5;
            break;
        case 2:
            r = 0.5;
            g = 0.5;
            b = indexPath.item / 10.0 + 0.1;
            break;
            
        default:
            break;
    }
    cell.contentView.backgroundColor = [UIColor colorWithDisplayP3Red:r green:g blue:b alpha:1];
    
    return cell;
}




@end
