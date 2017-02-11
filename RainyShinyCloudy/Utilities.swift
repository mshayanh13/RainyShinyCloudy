//
//  Utilities.swift
//  RainyShinyCloudy
//
//  Created by Mohammad Hemani on 2/11/17.
//  Copyright © 2017 Mohammad Hemani. All rights reserved.
//

import UIKit

extension Double {
    var toFahrenheit: Double {
        return self * 1.8 - 459.69
    }
}

func roundToTenths(_ value: Double) -> Double {
    return round(10 * value) / 10
}

extension Date {
    func dayofTheWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        return dateFormatter.string(from: self)
    }
}
