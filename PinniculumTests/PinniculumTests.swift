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
        let string = Pinniculum().text("font").font(UIFont(name: "Helvetica", size: 14)!).build()
        var range : NSRange? = NSMakeRange(0, string.length)
        let attribute : UIFont = string.attribute(NSFontAttributeName, atIndex: 0, effectiveRange: &range!) as UIFont
        
        XCTAssertNotNil(attribute, "attribute should not nil")
        XCTAssert(attribute.familyName == "Helvetica", "font family name should Helvetica")
        XCTAssert(attribute.pointSize == 14.0, "font size should 14pt")
    }
    
}
