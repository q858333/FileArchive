//
//  ViewController.m
//  FileArchive
//
//  Created by dengbin on 16/11/25.
//  Copyright © 2016年 dengbin. All rights reserved.
//

#import "ViewController.h"
#import "ZipArchive.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)unzipBtnClick:(id)sender {

    
    //NSString *filePath = [[NSBundle mainBundle] pathForResource:@"hello" ofType:@"zip"];
    NSString *filePath = @"/Users/dengbin/Desktop/testRar/h.zip";

    NSError *error = nil;
   // NSLog(@"%d",[SSZipArchive unzipFileAtPath:filePath toDestination:@"/Users/dengbin/Desktop/testRar" overwrite:YES password:nil error:&error]);
        // Unzip
    NSLog(@"%d",[SSZipArchive unzipFileAtPath:filePath toDestination:@"/Users/dengbin/Desktop/testRar" overwrite:YES password:@"123" error:&error ]);

    
    NSLog(@"%@",error);
}

- (IBAction)zipBtnClick:(id)sender {
    
    NSString *zippedPath = @"/Users/dengbin/Desktop/testRar/h.zip";
    NSArray *inputPaths = [NSArray arrayWithObjects:
                           [[NSBundle mainBundle] pathForResource:@"hello" ofType:@""],
                           [[NSBundle mainBundle] pathForResource:@"mp3" ofType:@"rar"]
                           , nil];
    

  //  NSLog(@"%d",[SSZipArchive createZipFileAtPath:zippedPath withFilesAtPaths:inputPaths]);
    // Create
    
    NSLog(@"%d",[SSZipArchive createZipFileAtPath:zippedPath withFilesAtPaths:inputPaths withPassword:@"123"]);


}
@end
