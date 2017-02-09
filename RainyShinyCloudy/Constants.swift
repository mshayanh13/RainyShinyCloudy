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

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)-36\(LONGITUDE)123\(APP_ID)\(APP_KEY)"
