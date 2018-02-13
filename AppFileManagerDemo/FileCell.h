//
//  FileCell.h
//  AppFileManagerDemo
//
//  Created by 李璐 on 2018/2/13.
//  Copyright © 2018年 LULI. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FileModel;

@interface FileCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UILabel *fileStateLabel;

@property (weak, nonatomic) IBOutlet UILabel *progressLabel;

@property(nonatomic,strong)FileModel * dataSource;

+(FileCell*)cellWithTableView:(UITableView*)tableView indexPath:(NSIndexPath*)indexPath;

@end
