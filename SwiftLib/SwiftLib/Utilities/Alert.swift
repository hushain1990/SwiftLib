//
//  Alert.swift
//  HushainLibrarySwift
//
//  Created by HUSHAN MUBARIK KHAN on 08/12/17.
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

class Alert {
	
	//Simple Alert
	class func showAlert(title:String, message:String, vc:UIViewController) {
		let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
		alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
		vc.present(alert, animated: true, completion: nil)
	}
	
	//Confirmation Alert
	class func showConfirmationAlert(title:String, message:String, vc:UIViewController, handler:@escaping(Bool)->Void) {
		
		let alert = UIAlertController(title: title, message: message, preferredStyle:.alert)
		
		alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { (action) in
			handler(true)
			alert.dismiss(animated: true, completion: nil)
		}))
		
		alert.addAction(UIAlertAction(title: "No", style: .default, handler: nil))
		
		vc.present(alert, animated: true, completion: nil)
	}
	
	//Action For Delete
	class func showDeleteAlert(title:String, message:String, vc:UIViewController, handler:@escaping(Bool)->Void) {
		
		var alert : UIAlertController
		if UI_USER_INTERFACE_IDIOM() == .pad {
			alert = UIAlertController(title: title, message: message, preferredStyle:.alert)
		} else {alert = UIAlertController(title: title, message: message, preferredStyle:.actionSheet)}
		
		alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { (action) in
			handler(true)
			alert.dismiss(animated: true, completion: nil)
		}))
		
		alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
		
		vc.present(alert, animated: true, completion: nil)
	}
	
}
