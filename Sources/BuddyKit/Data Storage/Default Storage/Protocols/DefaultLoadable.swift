//
//  DefaultLoadable.swift
//  BuddyKit
//
//  Created by Dimka Novikov on 09.12.2024.
//  Copyright © 2024 DDEC. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - DefaultLoadable

///
///
///
@available(iOS 18.0, *)
public protocol DefaultLoadable: AnyObject {

    // MARK: - Public methods

    ///
    ///
    ///
    func load<Object: DataDecodable>(_ type: Object.Type, forKey key: String) -> Object?
}
