//
//  SegueHandlerType.swift
//  SegueTestCocoaheads
//
//  Created by Flori on 04.01.16.
//  Copyright © 2016 Flori & Andy. All rights reserved.
//
import UIKit

protocol SegueHandlerType {
    typealias SegueIndentifier:RawRepresentable
}

extension SegueHandlerType where
    Self : UIViewController,
SegueIndentifier.RawValue == String {
    func segueIdentifierForSegue(segue: UIStoryboardSegue) -> SegueIndentifier {
        guard let
            identifier = segue.identifier,
            segueIdentifier = SegueIndentifier(rawValue: identifier)
            else {
                fatalError("🙉no valid identifier \(segue.identifier)")
        }
        return segueIdentifier
    }

    
    func performSegueWithIdentifier(identifier: SegueIndentifier, sender: AnyObject?) {
        performSegueWithIdentifier(identifier.rawValue, sender: sender)
    }
}
