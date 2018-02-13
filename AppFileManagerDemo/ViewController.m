//
//  ViewController.m
//  AppFileManagerDemo
//
//  Created by 李璐 on 2018/2/13.
//  Copyright © 2018年 LULI. All rights reserved.
//

#import "ViewController.h"
#import "FileCell.h"
#import "FileModel.h"
#import "FileManager.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong)UITableView * tableView;

@property(nonatomic,strong)NSArray<FileModel*>* dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataSource = [FileManager getFiles];
}

#pragma mark event

- (IBAction)downloadAction {
    //定时器模拟下载进度
    NSTimer * timer = [NSTimer scheduledTimerWithTimeInterval:0.5
                                                         target:self
                                                       selector:@selector(fakeProgressChange)
                                                       userInfo:nil
                                                        repeats:YES];
}

-(void)fakeProgressChange
{
    FileModel * file = self.dataSource.firstObject;
    file.progress += 0.1;
}

- (IBAction)createAction:(id)sender {
}

#pragma mark UITableViewDataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSource.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    FileCell * cell = [FileCell cellWithTableView:tableView indexPath:indexPath];
    cell.dataSource = self.dataSource[indexPath.row];
    return cell;
}
@end
