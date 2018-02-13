//
//  DBManager.h
//  AppFileManagerDemo
//
//  Created by 李璐 on 2018/2/13.
//  Copyright © 2018年 LULI. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FileModel;

@interface DBManager : NSObject

+(NSArray<FileModel*>*)getFiles;

+(void)updateFiles:(NSArray<FileModel*>*)file;

@end
