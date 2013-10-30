//
//  ViewController.m
//  SampleApplication
//
//  Created by 長谷川 敏行 on 2013/09/05.
//  Copyright (c) 2013年 長谷川 敏行. All rights reserved.
//

#import "ViewController.h"
#import <TestFramework/TestFramework.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[[TestFramework alloc] init] hello];

    NSBundle *bundle = [NSBundle mainBundle];
    NSString *path = [bundle pathForResource:@"TestResources.bundle/mixi" ofType:@"png"];
    UIImage *img = [UIImage imageWithContentsOfFile:path];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:img];
    [self.view addSubview:imageView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
