//
//  ViewController.m
//  002_fancy_text_creator
//
//  Created by Gabriel Betancourt on 8/11/20.
//  Copyright © 2020 mau5atron. All rights reserved.
//

#import "ViewController.h"

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

// input field to update label
- (IBAction) updateMainLabel:(id)sender {
	self.mainLabel.text = self.mainField.text;
}

	// #colors
- (IBAction) redFontColor:(id)sender {
	self.mainLabel.textColor = [UIColor redColor];
}

- (IBAction) blueFontColor:(id)sender {
	self.mainLabel.textColor = [UIColor blueColor];
}

- (IBAction) greenFontColor:(id)sender {
	self.mainLabel.textColor = [UIColor greenColor];
}

- (IBAction) customFontColor:(id)sender {
	// need to add color picker
	NSLog(@"Some custom color");
}

// #fonts
- (IBAction) blackSwordFont:(id)sender {
	[self.mainLabel setFont:[UIFont fontWithName:@"Blacksword" size: [self getFontSize:self.mainLabel]]];
}

- (IBAction) lemonMilkFont:(id)sender {
	[self.mainLabel setFont:[UIFont fontWithName:@"LemonMilk" size: [self getFontSize:self.mainLabel]]];
}

- (IBAction) moonFlowerFont:(id)sender {
	[self.mainLabel setFont:[UIFont fontWithName:@"MoonFlower" size:[self getFontSize:self.mainLabel]]];
}

- (IBAction) sugarMillenial:(id)sender {
	[self.mainLabel setFont:[UIFont fontWithName:@"Sugarstyle Millenial" size: [self getFontSize:self.mainLabel]]];
}

// #effects
- (IBAction) addShadow:(id)sender {
	self.mainLabel.layer.shadowOpacity = 0.5;
	self.mainLabel.layer.shadowColor = [[UIColor blackColor] CGColor];
	self.mainLabel.layer.shadowOffset = CGSizeMake(2.0, 2.0);
}

// #font sizes
- (IBAction) smallFont:(id)sender {
	UIFont *font = self.mainLabel.font;
	self.mainLabel.font = [font fontWithSize:22.0f];
}

- (IBAction) medFont:(id)sender {
	UIFont *font = self.mainLabel.font;
	self.mainLabel.font = [font fontWithSize:32.0f];
}

- (IBAction) largeFont:(id)sender {
	UIFont *font = self.mainLabel.font;
	self.mainLabel.font = [font fontWithSize:42.0f];
}

// #functions
- (CGFloat) getFontSize:(UILabel *)labelPtr {
	CGFloat currentFontSize = labelPtr.font.pointSize;
	return currentFontSize;
}

@end
