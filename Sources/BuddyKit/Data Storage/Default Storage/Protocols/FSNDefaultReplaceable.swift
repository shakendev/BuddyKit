//
//  FSNDefaultReplaceable.swift
//  BuddyKit
//
//  Created by Dimka Novikov on 09.12.2024.
//  Copyright © 2024 DDEC. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - FSNDefaultReplaceable

///
///
///
@available(iOS 18.0, *)
public protocol FSNDefaultReplaceable: AnyObject {

    // MARK: - Public methods

    ///
    ///
    ///
    @discardableResult
    func replace<Object: FSNDataEncodable>(_ object: Object, forKey key: String) -> Bool
}
