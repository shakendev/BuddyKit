//
//  DefaultSaveable.swift
//  BuddyKit
//
//  Created by Dimka Novikov on 09.12.2024.
//  Copyright © 2024 DDEC. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - DefaultSaveable

///
///
///
@available(iOS 18.0, *)
public protocol DefaultSaveable: AnyObject {

    // MARK: - Public methods

    ///
    ///
    ///
    @discardableResult
    func save<Object: DataEncodable>(_ object: Object, forKey key: String) -> Bool
}
