//
//  ViewController.m
//  ImagePickerControl
//
//  Created by foundry on 26/03/2013.
//  Copyright (c) 2013 foundry. All rights reserved.
//
//  Permission is given to use this source code file without charge in any
//  project, commercial or otherwise, entirely at your risk, with the condition
//  that any redistribution (in part or whole) of source code must retain
//  this copyright and permission notice. Attribution in compiled projects is
//  appreciated but not required.
//

#import "ViewController.h"
#import "CVImagePickerSegmentedControl.h"

@interface ViewController ()<CVImagePickerSegmentedControlDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *subview;

@end

@implementation ViewController

- (void) cvImagePickerControl:(CVImagePickerSegmentedControl*)control
        didFinishPickingMedia:(UIImage*)image
                     withInfo:(NSDictionary*)info;
{
    self.subview.image = image;
}

-(void)willPresentPopOverImagePickerController:(UIImagePickerController *)imagePicker
                                       popOver:(UIPopoverController *)popOver
                                      withRect:(CGRect *)rectPtr
                                        inView:(UIView *__autoreleasing *)viewPtr
                                arrowDirection:(UIPopoverArrowDirection *)arrowPtr
{
        //configure iPad imagePicker/popOver here (optional)
        //*rectPtr = [[[self.subview subviews]objectAtIndex:0] frame];
        // *viewPtr = self.view;
        // *arrowPtr = UIPopoverArrowDirectionAny;
}

- (void)willPresentImagePicker:(UIImagePickerController*)imagePicker
{
        //configure iPhone imagePicker here (optional)
}



- (void)viewDidUnload {
    [self setSubview:nil];
    [super viewDidUnload];
}



@end
