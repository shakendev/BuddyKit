//
//  FSNDefaultRemovable.swift
//  BuddyKit
//
//  Created by Dimka Novikov on 09.12.2024.
//  Copyright © 2024 DDEC. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - FSNDefaultRemovable

///
///
///
@available(iOS 18.0, *)
public protocol FSNDefaultRemovable: AnyObject {

    // MARK: - Public methods

    ///
    ///
    ///
    @discardableResult
    func remove(forKey key: String) -> Bool

    ///
    ///
    ///
    @discardableResult
    func removeAll() -> Bool
}
