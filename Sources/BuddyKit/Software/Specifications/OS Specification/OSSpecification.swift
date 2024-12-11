//
//  OSSpecification.swift
//  BuddyKit
//
//  Created by Dimka Novikov on 11.12.2024.
//  Copyright © 2024 DDEC. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - OSSpecification

///
///
///
@available(iOS 18.0, *)
public final class OSSpecification: OSSpecificationable {

    // MARK: - Public properties

    ///
    ///
    ///
    public let version: String



    // MARK: - Init

    ///
    ///
    ///
    public init() {
        let process = ProcessInfo()
        let osVersion = process.operatingSystemVersion

        let major = osVersion.majorVersion
        let minor = osVersion.minorVersion
        let patch = osVersion.patchVersion

        let version = "\(major).\(minor).\(patch)"

        self.version = version
    }
}
