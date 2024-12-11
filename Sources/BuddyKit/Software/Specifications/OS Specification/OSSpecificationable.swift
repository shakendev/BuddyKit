//
//  OSSpecificationable.swift
//  BuddyKit
//
//  Created by Dimka Novikov on 11.12.2024.
//  Copyright © 2024 DDEC. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - OSSpecificationable

///
///
///
@available(iOS 18.0, *)
public protocol OSSpecificationable: AnyObject {

    // MARK: - Public properties

    ///
    ///
    ///
    var version: String { get }
}
