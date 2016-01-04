//
//  ViewController.swift
//  SegueTestCocoaheads
//
//  Created by Flori on 04.01.16.
//  Copyright © 2016 Flori & Andy. All rights reserved.
//

import UIKit

class WeatherMainViewController: UIViewController, SegueHandlerType {
    enum SegueIndentifier:String {
        case SettingsIdentifier   = "SettingsIdentifier"
        case MapIdentifier        = "MapIdentifier"
        case ForecastIdentifier   = "ForecastIdentifier"
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        let img = UIImage(assetIdentifier: .Cloudy)
        print(" -> \(img)")

        
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        switch segueIdentifierForSegue(segue) {
        case .SettingsIdentifier:
            print("SettingsIdentifier")
        case .MapIdentifier:
            print("MapIdentifier")
        case .ForecastIdentifier:
            print("ForecastIdentifier")
        }
    }


    @IBAction func mapAction(sender: UIButton) {
        performSegueWithIdentifier(.MapIdentifier, sender: sender)
    }


}

