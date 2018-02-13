//
//  FileModel.h
//  AppFileManagerDemo
//
//  Created by 李璐 on 2018/2/13.
//  Copyright © 2018年 LULI. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, FileState) {
    FileState_Normal = 0,
    FileState_UploadFail = 1,
    FileState_Uploading = 2,
    FileState_DownloadFail = 3,
    FileState_Downloading = 4,
};

@interface FileModel : NSObject

@property(nonatomic,strong)NSString * baseName;

@property(nonatomic, assign)int index;

@property(nonatomic,strong)NSString * path;

@property(nonatomic, assign)FileState state;

@property(nonatomic, assign)CGFloat progress;

@end
