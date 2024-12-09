//
//  DefaultReplaceable.swift
//  BuddyKit
//
//  Created by Dimka Novikov on 09.12.2024.
//  Copyright © 2024 DDEC. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - DefaultReplaceable

///
///
///
@available(iOS 18.0, *)
public protocol DefaultReplaceable: AnyObject {

    // MARK: - Public methods

    ///
    ///
    ///
    @discardableResult
    func replace<Object: DataEncodable>(_ object: Object, forKey key: String) -> Bool
}
