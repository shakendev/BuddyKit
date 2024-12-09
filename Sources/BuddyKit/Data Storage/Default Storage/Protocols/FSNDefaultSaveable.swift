//
//  FSNDefaultSaveable.swift
//  BuddyKit
//
//  Created by Dimka Novikov on 09.12.2024.
//  Copyright © 2024 DDEC. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - FSNDefaultSaveable

///
///
///
@available(iOS 18.0, *)
public protocol FSNDefaultSaveable: AnyObject {

    // MARK: - Public methods

    ///
    ///
    ///
    @discardableResult
    func save<Object: FSNDataEncodable>(_ object: Object, forKey key: String) -> Bool
}
