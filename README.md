__ImagePickerSegmentedControl__

A subclasses UISegmentedControl containing all of the code required to implement a UIImagePickerController.

	/*
	 minimal usage  
	     _in code_
	     CVImagePickerSegmentedControl* imagePickerControl = [[CVImagePickerSegmentedControl alloc] init];
	     [imagePickerControl setDelegate:self];   //delegate must be a UIViewController
	     
	     _xib/storyboard_
	     Drag out a 2-segment segmented control. Change it's class to this class. 
	     Set it's delegate to the relevant View Controller.
	 
	    The only delegate method that needs to be implemented is:
	     - (void) imagePickerImage:(UIImage*)image info:(NSDictionary*)info;
	    This passes the image data back to the viewController.
	 
	 */
