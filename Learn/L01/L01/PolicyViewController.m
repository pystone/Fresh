//
//  PolicyViewController.m
//  L01
//
//  Created by steven on 4/29/15.
//  Copyright (c) 2015 steven. All rights reserved.
//

#import "PolicyViewController.h"

@interface PolicyViewController ()

@end

@implementation PolicyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *topLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 10, 320, 50)];
    topLabel.text = @"Policy";
    topLabel.textColor = [UIColor orangeColor];
    topLabel.backgroundColor = [UIColor whiteColor];
    topLabel.font = [UIFont fontWithName:@"MarkerFelt-Thin" size:14.0];
    topLabel.hidden = NO;
    topLabel.highlighted = YES;
    topLabel.highlightedTextColor = [UIColor blueColor];
    topLabel.lineBreakMode = YES;
    topLabel.numberOfLines = 2;
    topLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:topLabel];

    
    UIButton *pushButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    //    pushButton.center = CGPoint
    pushButton.frame = CGRectMake(0, 30, 50, 40);
    pushButton.titleLabel.textAlignment = NSTextAlignmentLeft;
    [pushButton setTitle:@"Back" forState:UIControlStateNormal];// cannot use "set image"
    //when used "set title"
    [pushButton addTarget:self action:@selector(dismissAction)
         forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
    
    [self addTextView];
}

- (void)dismissAction{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)addTextView{
    UITextView *myTextView = [[UITextView alloc]initWithFrame:
                  CGRectMake(10, 80, 320, 400)];
    [myTextView setText:@"\
     This Privacy Policy governs the manner in which Fresh collects, uses, maintains and discloses information collected from users \(each, a \"User\") of the http://www.fresh-cmu-pervasive-project.com website (\"Site\").\n\
     \n\
     Personal identification information\n\
     We may collect personal identification information from Users in a variety of ways, including, but not limited to, when Users visit our site, fill out a form, respond to a survey, and in connection with other activities, services, features or resources we make available on our Site.Users may be asked for, as appropriate, name. Users may, however, visit our Site anonymously. We will collect personal identification information from Users only if they voluntarily submit such information to us. Users can always refuse to supply personally identification information, except that it may prevent them from engaging in certain Site related activities.\n\
     \n\
Non-personal identification information\n\
     We may collect non-personal identification information about Users whenever they interact with our Site. Non-personal identification information may include the browser name, the type of computer and technical information about Users means of connection to our Site, such as the operating system and the Internet service providers utilized and other similar information.\n\
     \n\
Web browser cookies\n\
     Our Site may use \"cookies\" to enhance User experience. User's web browser places cookies on their hard drive for record-keeping purposes and sometimes to track information about them. User may choose to set their web browser to refuse cookies, or to alert you when cookies are being sent. If they do so, note that some parts of the Site may not function properly.\
     \n\
How we use collected information\n\
     Fresh may collect and use Users personal information for the following purposes:\n\
     \n\
To run and operate our Site\n\
     We may need your information display content on the Site correctly.\n\
     \n\
To improve customer service\n\
     Information you provide helps us respond to your customer service requests and support needs more efficiently.\n\
     \n\
To personalize user experience\n\
     We may use information in the aggregate to understand how our Users as a group use the services and resources provided on our Site.\n\
     \n\
To send periodic emails\n\
     We may use the email address to respond to their inquiries, questions, and/or other requests.\n\
     \n\
How we protect your information\n\
     We adopt appropriate data collection, storage and processing practices and security measures to protect against unauthorized access, alteration, disclosure or destruction of your personal information, username, password, transaction information and data stored on our Site.\n\
     \n\
Sharing your personal information\n\
     We do not sell, trade, or rent Users personal identification information to others. We may share generic aggregated demographic information not linked to any personal identification information regarding visitors and users with our business partners, trusted affiliates and advertisers for the purposes outlined above.\n\
     \n\
Changes to this privacy policy\n\
     Fresh has the discretion to update this privacy policy at any time. When we do, we will send you an email. We encourage Users to frequently check this page for any changes to stay informed about how we are helping to protect the personal information we collect. You acknowledge and agree that it is your responsibility to review this privacy policy periodically and become aware of modifications.\n\
     \n\
Your acceptance of these terms\n\
     By using this Site, you signify your acceptance of this policy. If you do not agree to this policy, please do not use our Site. Your continued use of the Site following the posting of changes to this policy will be deemed your acceptance of those changes. Privacy policy created by GeneratePrivacyPolicy.com\n\
    \n\
     Contacting us\n\
     If you have any questions about this Privacy Policy, the practices of this site, or your dealings with this site, please contact us.\n\
     \n\
     \n\
     This document was last updated on April 17, 2015\
     "];
     myTextView.delegate = self;
     [self.view addSubview:myTextView];
     
     }

#pragma mark - Text View delegates

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:
(NSRange)range replacementText:(NSString *)text{
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
    }
    return YES;
}
-(void)textViewDidBeginEditing:(UITextView *)textView{
    NSLog(@"Did begin editing");
}
-(void)textViewDidChange:(UITextView *)textView{
    NSLog(@"Did Change");
    
}
-(void)textViewDidEndEditing:(UITextView *)textView{
    NSLog(@"Did End editing");
    
}
-(BOOL)textViewShouldEndEditing:(UITextView *)textView{
    [textView resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
