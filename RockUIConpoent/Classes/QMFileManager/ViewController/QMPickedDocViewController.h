//
//  QMPickedDocViewController.h
//  IMSDK-OC
//
//  Created by HCF on 16/8/10.
//  Copyright © 2016年 HCF. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^CallBackBlock)(NSString *name, NSString * size, NSString * path);

@interface QMPickedDocViewController : UIViewController

@property (nonatomic, strong)CallBackBlock callBackBlock;

@property (nonatomic, assign)BOOL isForm;

@property (nonatomic, copy) NSString *vcName;

@end
