//
//  FSNDefaultStorable.swift
//  BuddyKit
//
//  Created by Dimka Novikov on 09.12.2024.
//  Copyright © 2024 DDEC. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - FSNDefaultStorable

///
///
///
@available(iOS 18.0, *)
public typealias FSNDefaultStorable = FSNDefaultLoadable & FSNDefaultRemovable & FSNDefaultReplaceable & FSNDefaultSaveable
