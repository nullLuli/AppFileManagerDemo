//
//  FileManager.m
//  AppFileManagerDemo
//
//  Created by 李璐 on 2018/2/13.
//  Copyright © 2018年 LULI. All rights reserved.
//

#import "FileManager.h"
#import "FileModel.h"
#import "DBManager.h"

@interface FileManager()

@property(nonatomic,strong)NSArray<FileModel*>* fileArr;

@end

@implementation FileManager

+(instancetype)share
{
    static FileManager * share = nil;
    static dispatch_once_t onetoekn;
    dispatch_once(&onetoekn, ^{
        share = [[self alloc] init];
    });
    return share;
}

+(NSArray<FileModel*>*)getFiles
{
    if ([FileManager share].fileArr) {
        return [FileManager share].fileArr;
    }
    
    [FileManager share].fileArr = [DBManager getFiles];
    return [FileManager share].fileArr;
}

+(void)updateFiles:(NSArray<FileModel*>*)files
{
    
}
@end
