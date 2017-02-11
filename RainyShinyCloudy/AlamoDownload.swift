//
//  AlamoDownload.swift
//  RainyShinyCloudy
//
//  Created by Mohammad Hemani on 2/11/17.
//  Copyright © 2017 Mohammad Hemani. All rights reserved.
//

import UIKit
import Alamofire

var _currentWeather: CurrentWeather!
var _forecasts = [Forecast]()

class AlamoDownload {
    
    var currentWeather: CurrentWeather {
        if _currentWeather == nil {
            _currentWeather = CurrentWeather()
        }
        return _currentWeather
    }
    
    var forecasts: [Forecast] {
        return _forecasts
    }

    func downloadWeatherDetails(completed: @escaping DownloadComplete) {
        //Alamofire download
        Alamofire.request(CURRENT_WEATHER_URL).responseJSON { response  in
            
            let result = response.result
            
            if let dict = result.value as? Dictionary<String, Any> {
                
                self.currentWeather.parseDataFrom(dict: dict)
                
            }
            completed()
        }
    }

    func downloadForecastData(completed: @escaping DownloadComplete) {
        //Downloading forecast weather data for TableView
        Alamofire.request(FORECAST_URL).responseJSON { response in
            let result = response.result
            
            _forecasts = [Forecast]()
            
            if let dict = result.value as? Dictionary<String, Any> {
                if let list = dict["list"] as? [Dictionary<String, Any>] {
                    
                    for obj in list {
                        let forecast = Forecast()
                        forecast.parseDataFrom(dict: obj)
                        _forecasts.append(forecast)
                    }
                    _forecasts.remove(at: 0)
                }
            }
            completed()
        }
    }

}
