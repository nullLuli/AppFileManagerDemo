//
//  FileCell.m
//  AppFileManagerDemo
//
//  Created by 李璐 on 2018/2/13.
//  Copyright © 2018年 LULI. All rights reserved.
//

#import "FileCell.h"
#import "FileModel.h"

@implementation FileCell

+(FileCell*)cellWithTableView:(UITableView*)tableView indexPath:(NSIndexPath*)indexPath
{
    UINib * nib = [UINib nibWithNibName:NSStringFromClass([self class]) bundle:nil];
    [tableView registerNib:nib forCellReuseIdentifier:NSStringFromClass([self class])];
    FileCell * cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([self class]) forIndexPath:indexPath];
    return cell;
}

-(void)setDataSource:(FileModel *)dataSource
{
    //添加观察者
    NSArray<NSString*>* propertyArr = @[@"baseName",@"state",@"progress"];
    for (NSString * propertyName in propertyArr) {
        if (self.dataSource) {
            [self.dataSource removeObserver:self forKeyPath:propertyName];
        }
        [dataSource addObserver:self forKeyPath:propertyName options:NSKeyValueObservingOptionNew context:nil];
    }
    
    _dataSource = dataSource;
    
    //更新界面
    [self refreshUI:_dataSource];
}

-(void)refreshUI:(FileModel*)dataSource
{
    self.nameLabel.text = dataSource.baseName;
    self.fileStateLabel.text = @(dataSource.state).stringValue;
    self.progressLabel.text = @(dataSource.progress).stringValue;
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    NSArray<NSString*>* propertyArr = @[@"baseName",@"state",@"progress"];
    if ([propertyArr containsObject:keyPath]) {
        [self refreshUI:self.dataSource];
    }
}

-(void)dealloc
{
    NSArray<NSString*>* propertyArr = @[@"baseName",@"state",@"progress"];
    for (NSString * propertyName in propertyArr) {
        if (self.dataSource) {
            [self.dataSource removeObserver:self forKeyPath:propertyName];
        }
    }
}
@end
