//
//  PinniculumTests.swift
//  PinniculumTests
//
//  Created by Shun Kuroda on 2015/02/28.
//  Copyright (c) 2015年 kuroyam. All rights reserved.
//

import UIKit
import XCTest

class PinniculumTests: XCTestCase {
    
    func testFont() {
        let string = Pinniculum().text("font").font(UIFont(name: "Helvetica", size: 14.0)!).build()
        var range : NSRange? = NSMakeRange(0, string.length)
        let attribute : UIFont = string.attribute(NSFontAttributeName, atIndex: 0, effectiveRange: &range!) as UIFont
        
        XCTAssertNotNil(attribute, "attribute should not nil")
        XCTAssert(attribute.familyName == "Helvetica", "font family name should Helvetica")
        XCTAssert(attribute.pointSize == 14.0, "font size should 14pt")
    }
    
    func testColor() {
        let string = Pinniculum().text("color").color(UIColor(red: 0.2, green: 0.4, blue: 0.6, alpha: 1.0)).build()
        var range : NSRange? = NSMakeRange(0, string.length)
        let attribute : UIColor = string.attribute(NSForegroundColorAttributeName, atIndex: 0, effectiveRange: &range!) as UIColor
        
        var red : CGFloat = 0
        var green : CGFloat = 0
        var blue : CGFloat = 0
        var alpha : CGFloat = 0
        
        attribute.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        XCTAssertNotNil(attribute, "attribute should not nil")
        XCTAssert(red == 0.2, "red value should 0.2")
        XCTAssert(green == 0.4, "green value should 0.4")
        XCTAssert(blue == 0.6, "blue value should 0.6")
        XCTAssert(alpha == 1.0, "alpha value should 1.0")
    }
    
    func testBackgroundColor() {
        let string = Pinniculum().text("color").backgroundColor(UIColor(red: 0.2, green: 0.4, blue: 0.6, alpha: 1.0)).build()
        var range : NSRange? = NSMakeRange(0, string.length)
        let attribute : UIColor = string.attribute(NSBackgroundColorAttributeName, atIndex: 0, effectiveRange: &range!) as UIColor
        
        var red : CGFloat = 0
        var green : CGFloat = 0
        var blue : CGFloat = 0
        var alpha : CGFloat = 0
        
        attribute.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        XCTAssertNotNil(attribute, "attribute should not nil")
        XCTAssert(red == 0.2, "red value should 0.2")
        XCTAssert(green == 0.4, "green value should 0.4")
        XCTAssert(blue == 0.6, "blue value should 0.6")
        XCTAssert(alpha == 1.0, "alpha value should 1.0")
    }
    
    func testKern() {
        let string = Pinniculum().text("kern").kern(2.0).build()
        var range : NSRange? = NSMakeRange(0, string.length);
        let attribute : NSNumber = string.attribute(NSKernAttributeName, atIndex: 0, effectiveRange: &range!) as NSNumber
        
        XCTAssertNotNil(attribute, "attribute should not nil")
        XCTAssert(attribute.floatValue == 2.0, "kern value should 2.0")
    }
    
    func testAlign() {
        let string = Pinniculum().text("align").align(NSTextAlignment.Center).build()
        var range : NSRange? = NSMakeRange(0, string.length)
        let style : NSParagraphStyle = string.attribute(NSParagraphStyleAttributeName, atIndex: 0, effectiveRange: &range!) as NSParagraphStyle
        
        XCTAssertNotNil(style, "attribute should not nil")
        XCTAssert(style.alignment == NSTextAlignment.Center, "alignment should center");
    }
    
    func testTextConnection() {
        let string = Pinniculum().text("text1").text("text2").build();
        var range : NSRange? = NSMakeRange(0, string.length)
        
        XCTAssert(string.length == "text1text2".utf16Count, "string should connected text length")
    }
    
}
