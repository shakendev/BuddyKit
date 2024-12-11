//
//  AppSpecification.swift
//  BuddyKit
//
//  Created by Dimka Novikov on 11.12.2024.
//  Copyright © 2024 DDEC. All rights reserved.
//


// MARK: Import section

import Foundation



// MARK: - AppSpecification

///
///
///
@available(iOS 18.0, *)
public final class AppSpecification: AppSpecificationable {

    // MARK: - Public properties

    ///
    ///
    ///
    public let version: String



    // MARK: - Init

    ///
    ///
    ///
    public init?() {
        guard let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String else {
            return nil
        }

        self.version = version
    }
}
