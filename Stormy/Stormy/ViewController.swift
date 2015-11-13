//
//  ViewController.swift
//  Stormy
//
//  Created by James Plauche on 9/1/15.
//  Copyright (c) 2015 Tanner Plauché. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var currentTemperatureLabel: UILabel?
    @IBOutlet weak var currentHumidityLabel: UILabel?
    @IBOutlet weak var currentpercipitationLabel: UILabel?
    private let forecastApiKey = "894454c71c0f2bf41eb5f29c71b0b9ab"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let baseURL = NSURL(string: "https://api.forecast.io/forecast/\(forecastApiKey)/")
        let forecastURL = NSURL(string: "37.8267,-122.423", relativeToURL: baseURL)

        
        if let plistPath = NSBundle.mainBundle().pathForResource("CurrentWeather", ofType: "plist"),
            let weatherDictionary = NSDictionary(contentsOfFile: plistPath),
        let currentWeatherDictionary = weatherDictionary["currently"] as? [String : AnyObject]
        {
            let currentWeather = CurrentWeather(weatherDictionary : currentWeatherDictionary)
        
            currentTemperatureLabel?.text = "\(currentWeather.temperature)º"
            currentHumidityLabel?.text = "\(currentWeather.humidity)%"
            currentpercipitationLabel?.text = "\(currentWeather.precipProbability)%"
        }
        
    } //end of viewDidLoad

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

