//
//  DateExtension.swift
//  Continum
//
//  Created by Carson Buckley on 4/11/19.
//  Copyright © 2019 Launch. All rights reserved.
//

import Foundation

extension Date {
    func stringWith(dateStyle: DateFormatter.Style, timeStyle: DateFormatter.Style) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = dateStyle
        formatter.timeStyle = timeStyle
        return formatter.string(from: self)
    }
}
