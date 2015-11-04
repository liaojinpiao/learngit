//
//  About.m
//  zhaobenshu
//
//  Created by Freemanpea le on 14-8-22.
//  Copyright (c) 2014年 com.zhaobenshu. All rights reserved.
//

#import "About.h"
//add three
#import "TokenUrl.h"
#import "ZBSSecretData.h"
#import "ZBSNetworkFetcher.h"
#import "ZbsUrl.h"
#import "MapService.h"
#import "ZBSNetworkOperation.h"
#import "ZBSKeyChainManager.h"
#import "AppToken.h"
#import "LibService.h"
#import "ZBSKeyChainManager.h"

//add   addtwo

@interface About ()
{
    UIAlertView *colorEggAlert;
    AppAlert *appAlert;
}
@end

@implementation About

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    appAlert=[[AppAlert alloc]initWithTargetView:self.view];
    
    UIButton *iBackBt=[[UIButton alloc]initWithFrame:CGRectMake(0, 0, 45, 40)];
    [iBackBt setTitle:@"返回" forState:UIControlStateNormal];
    [iBackBt setTitleEdgeInsets:UIEdgeInsetsMake(2,5, 0, 0)];
    [iBackBt addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *iBackItem=[[UIBarButtonItem alloc]initWithCustomView:iBackBt];
    [self.navigationItem setLeftBarButtonItem:iBackItem];
    

    
    /*[ZBSSecretData requestPhoneRdWithCompletionHandler:^(NSString *PhoneRd, NSString *error, NSString *errorname) {
        
        NSLog(@"error:%@, errorname:%@,PhoneRd:%@",error,errorname,PhoneRd);
        
        
        [ZBSKeyChainManager saveValues:@"810982907@qq.com" forKey:ZBSKeyChainKey_UserEmail];
        [ZBSKeyChainManager saveValues:@"1234" forKey:ZBSKeyChainKey_UserPwd];
        
        [ZBSKeyChainManager saveValues:@"H4HKLXUYHE" forKey:ZBSKeyChainKey_UserRd];
        [ZBSKeyChainManager saveValues:@"OECM8GMZRU" forKey:ZBSKeyChainKey_SessId];
        
        
        
    }];*/
    
   /* NSLog(@"PhoneRd:%@",[ZBSKeyChainManager readValuesFromKey:ZBSKeyChainKey_PhoneRd]);
    NSLog(@"UserEmail:%@",[ZBSKeyChainManager readValuesFromKey:ZBSKeyChainKey_UserEmail]);
    NSLog(@"UserPwd:%@",[ZBSKeyChainManager readValuesFromKey:ZBSKeyChainKey_UserPwd]);
    NSLog(@"UserRd:%@   %@",[ZBSKeyChainManager readValuesFromKey:ZBSKeyChainKey_UserRd],[UserModel shareInstance].SessId);
    NSLog(@"SessId:%@  %@",[ZBSKeyChainManager readValuesFromKey:ZBSKeyChainKey_SessId],[UserModel shareInstance].SessId);*/

   
    /*if ([ZBSSecretData shareInstance].PhoneRd==nil) {
        [ZBSSecretData requestPhoneRdWithCompletionHandler:^(NSString *PhoneRd, NSString *error, NSString *errorname) {
            
            NSLog(@"error:%@, errorname:%@,PhoneRd:%@",error,errorname,PhoneRd);
            
        }];
    }else
    {
    
        NSLog(@"PhoneRd:%@",[ZBSSecretData shareInstance].PhoneRd);
    }
    
    ZBSNetworkFetcher *iZBSNetworkFetcher=[[ZBSNetworkFetcher alloc]init];
    [iZBSNetworkFetcher requestWithUrl:[ZbsUrl lib_ifa_GetLib] completionHandler:^(NSDictionary *vResponseDiv, NSError *vError) {
        NSLog(@"%@",[vResponseDiv objectForKey:@"Version"]);
    }];
    
    ZBSNetworkFetcher *iZBSNetworkFetcher2=[[ZBSNetworkFetcher alloc]init];
    [iZBSNetworkFetcher2 requestWithUrl:[ZbsUrl lib_ifa_GetSublib:@"gdut"] completionHandler:^(NSDictionary *vResponseDiv, NSError *vError) {
        NSLog(@"%@",[vResponseDiv objectForKey:@"Version"]);
    }];
    
    ZBSNetworkFetcher *iZBSNetworkFetcher3=[[ZBSNetworkFetcher alloc]init];
    [iZBSNetworkFetcher3 requestWithUrl:[ZbsUrl version_ifa_GetSmartLib] completionHandler:^(NSDictionary *vResponseDiv, NSError *vError) {
        NSLog(@"%@",[vResponseDiv objectForKey:@"errorname"]);
    }];*/
    
    /*NSArray *iArray=[MapService getAround:34.264648 lon: 108.952736 radius:1000];
    
    NSLog(@"iarray:%@",iArray);
    
    double distance=[MapService getDistance:[iArray[1] doubleValue] b:[iArray[0] doubleValue] c:116.407288 d:39.904549];
    
    NSLog(@"distance:%f",distance);*/

  
    
    /*NSString *bundling=[[NSBundle mainBundle]bundleIdentifier];
    NSLog(@"%@",bundling);
    [ZBSKeyChainManager saveValues:@"" forKey:ZBSKeyChainKey_PhoneRd];
   [  ZBSKeyChainManager deletePhoneRd];*/
    
     
}

-(void)viewWillAppear:(BOOL)animated
{

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)back
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)toColorEgg:(id)sender {
    if (colorEggAlert==nil) {
        colorEggAlert=[[UIAlertView alloc] initWithTitle:@"我是彩蛋君" message:@"想看我可没那么容易" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        [colorEggAlert setAlertViewStyle:UIAlertViewStyleSecureTextInput];
        [colorEggAlert show];
    }
   
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex==1) {
        UITextField *iPassW=[colorEggAlert textFieldAtIndex:0];
        NSDate *date=[NSDate date];
        NSDateFormatter  *dateformatter=[[NSDateFormatter alloc] init];
        
        [dateformatter setDateFormat:@"MMdd"];
        
        NSString *  locationString=[dateformatter stringFromDate:date];
        
        NSLog(@"locationString:%@",locationString);
        
        if ([iPassW.text isEqualToString:locationString]) {
            ColorEgg *icolorEgg=[self.storyboard instantiateViewControllerWithIdentifier:@"ColorEgg"];
            [self.navigationController pushViewController:icolorEgg animated:YES];
        }
        else
        {
            [appAlert dealActionError:@"不好意思，您的命令不对"];
        }
    }
    colorEggAlert=nil;
}
- (IBAction)toInsFeedBack:(id)sender {
    InsFeedBack *iInsFeedBack=[self.storyboard instantiateViewControllerWithIdentifier:@"InsFeedBack"];
    [self.navigationController pushViewController:iInsFeedBack animated:YES];
}
@end
