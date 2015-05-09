//
//  StringExtesnion.swift
//  SignMyPad
//
//  Created by Giorgio Natili on 5/9/15.
//  Copyright (c) 2015 Natili, Giorgio. All rights reserved.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: NSBundle.mainBundle(), value: "", comment: "")
    }
}