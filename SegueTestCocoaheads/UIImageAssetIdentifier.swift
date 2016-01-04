//
//  UIImageAssetIdentifier.swift
//  SegueTestCocoaheads
//
//  Created by Flori on 04.01.16.
//  Copyright © 2016 Flori & Andy. All rights reserved.
//

import Foundation
import UIKit
extension UIImage {
    enum AssetIdentifier:String {
        case Cloudy = "Cloudy"
        case Foggy = "Foggy"
        case Moony = "Moony"
        case MoonyWithClouds = "MoonyWithClouds"
        case Rainy = "Rainy"
        case Sunny = "Sunny"
        case SunnyWithClouds = "SunnyWithClouds"
        case Thunderstormy = "Thunderstormy"
    }
    
    convenience init!(assetIdentifier:AssetIdentifier) {
        self.init(named: assetIdentifier.rawValue)
    }
}

