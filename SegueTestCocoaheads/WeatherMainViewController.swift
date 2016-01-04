//
//  ViewController.swift
//  SegueTestCocoaheads
//
//  Created by Flori on 04.01.16.
//  Copyright © 2016 Flori & Andy. All rights reserved.
//

import UIKit

class WeatherMainViewController: UIViewController {
    enum SegueIndentifier:String {
        case SettingsIdentifier   = "SettingsIdentifier"
        case MapIdentifier        = "MapIdentifier"
        case ForecastIdentifier   = "ForecastIdentifier"
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        guard let
            identifier = segue.identifier,
            segueIdentifier = SegueIndentifier(rawValue: identifier)
            else {
                fatalError("🙉no valid identifier \(segue.identifier)")
        }
        
        switch segueIdentifier {
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
    
    func performSegueWithIdentifier(identifier: SegueIndentifier, sender: AnyObject?) {
        performSegueWithIdentifier(identifier.rawValue, sender: sender)
    }

}

