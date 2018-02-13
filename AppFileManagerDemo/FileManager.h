//
//  FileManager.h
//  AppFileManagerDemo
//
//  Created by 李璐 on 2018/2/13.
//  Copyright © 2018年 LULI. All rights reserved.
//
//  FileManager：管理文件数据，保证内存中有且只有一个模型对应数据中的文件

#import <Foundation/Foundation.h>

@class FileModel;

@interface FileManager : NSObject

+(NSArray<FileModel*>*)getFiles;

+(void)updateFiles:(NSArray<FileModel*>*)files;
@end
