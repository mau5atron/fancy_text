//
//  ViewController.h
//  002_fancy_text_creator
//
//  Created by Gabriel Betancourt on 8/11/20.
//  Copyright © 2020 mau5atron. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
	BOOL shadowState;
}

@property (weak, nonatomic) IBOutlet UILabel *mainLabel;
@property (weak, nonatomic) IBOutlet UITextField *mainField;
@property (weak, nonatomic) IBOutlet UIButton *addShadowBtn;
- (IBAction) updateMainLabel:(id)sender;
- (IBAction) redFontColor:(id)sender;
- (IBAction) blueFontColor:(id)sender;
- (IBAction) greenFontColor:(id)sender;
- (IBAction) customFontColor:(id)sender;
- (IBAction) blackSwordFont:(id)sender;
- (IBAction) lemonMilkFont:(id)sender;
- (IBAction) moonFlowerFont:(id)sender;
- (IBAction) sugarMillenial:(id)sender;
- (IBAction) addShadow:(id)sender;
- (IBAction) smallFont:(id)sender;
- (IBAction) medFont:(id)sender;
- (IBAction) largeFont:(id)sender;
- (CGFloat) getFontSize:(UILabel *) labelPtr;
@end

