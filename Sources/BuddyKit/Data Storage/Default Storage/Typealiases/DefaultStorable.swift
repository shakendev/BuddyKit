//
//  DefaultStorable.swift
//  BuddyKit
//
//  Created by Dimka Novikov on 09.12.2024.
//  Copyright © 2024 DDEC. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - DefaultStorable

///
///
///
@available(iOS 18.0, *)
public typealias DefaultStorable = DefaultLoadable & DefaultRemovable & DefaultReplaceable & DefaultSaveable
