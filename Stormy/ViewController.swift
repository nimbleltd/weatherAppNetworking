//
//  ViewController.swift
//  Stormy
//
//  Created by Pasan Premaratne on 4/9/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit

extension CurrentWeather {
    var tempuratureString: String{
        return "\(Int(tempurature))º"
    }
    var humidityString: String{
        let percentageValue = Int(humidity * 100)
        return "\(Int(percentageValue))%"
    }
    var precipitationProbabilityString: String{
        let precipitationPercent = Int(precipitationProbability * 100)
        return "\(Int(precipitationPercent))%"
    }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var currentTemperatureLabel: UILabel!
    @IBOutlet weak var currentHumidityLabel: UILabel!
    @IBOutlet weak var currentPrecipitationLabel: UILabel!
    @IBOutlet weak var currentWeatherIcon: UIImageView!
    @IBOutlet weak var currentSummaryLabel: UILabel!
    @IBOutlet weak var refreshButton: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let icon = WeatherIcon.PartlyCloudyDay.image
        let currentWeather = CurrentWeather(tempurature: 59.0, humidity: 0.6, precipitationProbability: 0.9, summary: "Wet and rainy!", icon: icon)
        
        display(currentWeather)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func display(weather: CurrentWeather) {
        currentTemperatureLabel.text = weather.tempuratureString
        currentHumidityLabel.text = weather.humidityString
        currentPrecipitationLabel.text = weather.precipitationProbabilityString
        currentSummaryLabel.text = weather.summary
        currentWeatherIcon.image = weather.icon
    }

}

