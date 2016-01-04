//
//  ViewController.swift
//  SegueTestCocoaheads
//
//  Created by Flori on 04.01.16.
//  Copyright © 2016 Flori & Andy. All rights reserved.
//

import UIKit

class WeatherMainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        switch segue.identifier {
        case "SettingsIdentifier"?:
            print("SettingsIdentifier")
        case "MapIdentifier"?:
            print("MapIdentifier")
        case "ForecastIdentifier"?:
            print("ForecastIdentifier")
        default:
            fatalError("🙉no valid identifier \(segue.identifier)")
        }
        
    }


}

