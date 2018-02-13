//
//  DBManager.m
//  AppFileManagerDemo
//
//  Created by 李璐 on 2018/2/13.
//  Copyright © 2018年 LULI. All rights reserved.
//

#import "DBManager.h"
#import "FileModel.h"

@implementation DBManager

+(NSArray<FileModel*>*)getFiles
{
    FileModel * file1 = [[FileModel alloc]init];
    file1.baseName = @"iOS学习指南";
    file1.state = FileState_Normal;
    
    FileModel * file2 = [[FileModel alloc]init];
    file2.baseName = @"安卓学习指南";
    file2.state = FileState_Normal;
    
    return @[file1,file2];
}

+(void)updateFiles:(NSArray<FileModel*>*)file
{
    
}

@end
