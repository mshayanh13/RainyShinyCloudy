//
//  CurrentWeather.swift
//  RainyShinyCloudy
//
//  Created by Mohammad Hemani on 2/9/17.
//  Copyright © 2017 Mohammad Hemani. All rights reserved.
//

import UIKit
import Alamofire

class CurrentWeather {
    private var _cityName: String!
    private var _date: String!
    private var _weatherType: String!
    private var _currentTemp: Double!
    
    var cityName: String {
        if _cityName == nil {
            _cityName = ""
        }
        return _cityName
    }
    
    var date:String {
        if _date == nil {
            _date = ""
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        let currentDate = dateFormatter.string(from: Date())
        self._date = "Today, \(currentDate)"
        
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var currentTemp: Double {
        if _currentTemp == nil {
            _currentTemp = 0.0
        }
        return _currentTemp
    }
    
    func parseDataFrom(dict: Dictionary<String, Any>) {
        if let name = dict["name"] as? String {
            self._cityName = name.capitalized
        }
        
        if let weather = dict["weather"] as? [Dictionary<String,Any>] {
            
            if let main = weather[0]["main"] as? String {
                self._weatherType = main.capitalized
            }
        }
        
        if let main = dict["main"] as? Dictionary<String,Any> {
            
            if let currentTemperature = main["temp"] as? Double {
                
                let kelvinToFarenheitPreDivision = (currentTemperature * 9/5 - 459.67)
                let kelvinToFarenheit = Double(round(10*kelvinToFarenheitPreDivision/10))
                
                self._currentTemp = kelvinToFarenheit
            }
        }
    }
}
