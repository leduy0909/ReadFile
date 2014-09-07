//
//  ReadFile.swift
//  ReadFile
//
//  Created by Mettamdaica0909 on 9/7/14.
//  Copyright (c) 2014 Mettamdaica0909. All rights reserved.
//

import UIKit

class ReadFile: GenericVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        var path:NSString = NSBundle.mainBundle().pathForResource("data", ofType: "txt")!
        var content:NSString = NSString.stringWithContentsOfFile(path, encoding: NSUTF8StringEncoding, error: nil)
        // self.inRa(content)
        var array = content.componentsSeparatedByString(" ")
        var count1:Int = 0
        var count2:Int = 0
        var count3:Int = 0
        for char in array {
            if (char as NSString) == "Russia" {
                count1 += 1
            }
            if (char as NSString) == "USA" {
                count2 += 1
            }
            if (char as NSString) == "Vietnam" {
                count3 += 1
            }
        }
        self.inRa("So lan Russia xuat hien la : \(count1) lan")
        self.inRa("So lan USA xuat hien la : \(count2) lan")
        self.inRa("So lan Vietnam xuat hien la : \(count3) lan")
    }
}
    