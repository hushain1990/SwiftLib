//
//  Color.swift
//  ERP
//
//  Created by HUSHAN MUBARIK KHAN on 11/12/17.
//  Copyright © 2017 HUSHAN MUBARIK KHAN. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import Foundation
import UIKit

extension UIColor {
	
	 public convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
		self.init(
			red:   r/255.0,
			green: g/255.0,
			blue:  b/255.0,
			alpha: 1.0
		)
	}
	
	public convenience init(r: CGFloat, g: CGFloat, b: CGFloat, alpha: CGFloat) {
		self.init(
			red: r/255.0,
			green: g/255.0,
			blue: b/255.0,
			alpha: alpha/255.0
		)
	}
	
	//App Spacific Colors
	static let cGradientColorOne 	= UIColor(r: 84.0, g: 64.0, b: 105.0)
	static let cGradientColorTwo 	= UIColor(r: 47.0, g: 57.0, b: 99.0)
	
	static let cTabBackgroundColor 	= UIColor(r: 47.0, g: 57.0, b: 99.0)
	static let cTabIconSelectedColor = UIColor(r: 251.0, g: 157.0, b: 55.0)
	
	static let cOrangeColor = UIColor(r: 245.0, g: 166.0, b: 35.0)  //f5a623
	static let cGrayColor_TabDisable = UIColor(r: 255.0, g: 255.0, b: 255.0, alpha:0.5) //ffffff
	static let cWhite_90			 = UIColor(r: 255.0, g: 255.0, b: 255.0, alpha:0.9) //ffffff
	static let cGray_Background      = UIColor(r: 231.0, g: 231.0, b: 231.0) //e7e7e7
	//static let
	
	static let cTransparentColor_White = UIColor(r: 255.0, g: 255.0, b: 255.0, alpha:0.1)
	static let cTransparentColor_Black = UIColor(r: 0.0, g: 0.0, b: 0.0, alpha:0.1)
	
}
