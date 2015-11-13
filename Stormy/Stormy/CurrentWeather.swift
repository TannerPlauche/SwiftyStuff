//
//  CurrentWeather.swift
//  Stormy
//
//  Created by James Plauche on 9/1/15.
//  Copyright (c) 2015 Tanner Plauché. All rights reserved.
//

import Foundation

struct CurrentWeather {
    let temperature: Int
    let humidity: Int
    let precipProbability: Int
    let summary: String
    
    init (weatherDictionary: [String: AnyObject]) {
        temperature = weatherDictionary["temperature"] as! Int
        let humidityfloat = weatherDictionary["humidity"] as! Double
        humidity = Int(humidityfloat * 100)
        let precipfloat = weatherDictionary["precipProbability"] as! Double
        precipProbability = Int(precipfloat * 100)
        summary = weatherDictionary["summary"] as! String
    }
}