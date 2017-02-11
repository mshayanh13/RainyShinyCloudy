//
//  Constants.swift
//  RainyShinyCloudy
//
//  Created by Mohammad Hemani on 2/9/17.
//  Copyright © 2017 Mohammad Hemani. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let APP_KEY = "89575d3c850c4fe09a01e9aedf6aec9e"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=89575d3c850c4fe09a01e9aedf6aec9e"
let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&mode=json&appid=89575d3c850c4fe09a01e9aedf6aec9e"
